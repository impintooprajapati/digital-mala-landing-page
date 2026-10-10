"""Validate the pre-rendered SEO contract. Run after: jaspr build."""
import json
from html.parser import HTMLParser
from pathlib import Path
from urllib.parse import urlparse
from xml.etree import ElementTree

ROOT = Path(__file__).resolve().parents[1]
BUILD = ROOT / "build/jaspr"
SITE = "https://digitalmala.app"
ROUTES = ["/", "/privacy-policy", "/terms-of-service", "/changelog"]


class Page(HTMLParser):
    def __init__(self, source):
        super().__init__()
        self.tags = []
        self.text = {}
        self.schema = []
        self.capture = None
        self.buffer = []
        self.feed(source)

    def handle_starttag(self, tag, attributes):
        attributes = dict(attributes)
        self.tags.append((tag, attributes))
        if tag in ("title", "h1") or (tag == "script" and attributes.get("type") == "application/ld+json"):
            self.capture = tag
            self.buffer = []

    def handle_data(self, text):
        if self.capture:
            self.buffer.append(text)

    def handle_endtag(self, tag):
        if self.capture == tag:
            value = "".join(self.buffer)
            if tag == "script":
                self.schema.append(json.loads(value))
            else:
                self.text.setdefault(tag, []).append(value)
            self.capture = None

    def attributes(self, tag, key, value):
        return [attributes for name, attributes in self.tags if name == tag and attributes.get(key) == value]


titles, descriptions = set(), set()
for route in ROUTES:
    source = BUILD / route.strip("/") / "index.html"
    page = Page(source.read_text())
    assert len(page.text.get("title", [])) == 1, f"{route}: one title required"
    assert len(page.text.get("h1", [])) == 1, f"{route}: one H1 required"
    title = page.text["title"][0]
    description_tags = page.attributes("meta", "name", "description")
    assert len(description_tags) == 1, f"{route}: one description required"
    description = description_tags[0]["content"]
    assert 60 <= len(description) <= 165, f"{route}: check description length"
    assert title not in titles and description not in descriptions, f"{route}: duplicate metadata"
    titles.add(title)
    descriptions.add(description)
    canonical = page.attributes("link", "rel", "canonical")
    assert len(canonical) == 1 and canonical[0]["href"] == SITE + route, f"{route}: canonical mismatch"
    assert page.attributes("meta", "property", "og:url")[0]["content"] == SITE + route
    assert page.attributes("meta", "property", "og:title")[0]["content"] == title
    assert page.attributes("meta", "name", "twitter:title")[0]["content"] == title
    assert page.attributes("meta", "property", "og:image:width")[0]["content"] == "1024"
    assert page.attributes("meta", "property", "og:image:height")[0]["content"] == "500"
    assert page.attributes("meta", "name", "robots")[0]["content"].startswith("index, follow")
    nodes = [node for schema in page.schema for node in schema.get("@graph", [schema])]
    types = {node.get("@type") for node in nodes}
    assert "FAQPage" not in types and "Review" not in types, f"{route}: unsupported or unverified schema"
    assert ("MobileApplication" in types) == (route == "/"), f"{route}: app schema leaked"
    assert ("SoftwareApplication" in types) == (route == "/"), f"{route}: desktop schema leaked"
    if route == "/":
        assert {"WebSite", "WebPage", "MobileApplication"} <= types
        assert page.attributes("div", "id", "desktop"), "Desktop availability anchor is missing"
        assert "Release notes &amp; all files" not in source.read_text(), "The removed release link must not return"
        cards_index = next(i for i, (tag, attributes) in enumerate(page.tags) if attributes.get("class") == "desktop-platforms")
        preview_index = next(i for i, (tag, attributes) in enumerate(page.tags) if attributes.get("class") == "desktop-showcase")
        assert cards_index < preview_index, "Download choices must appear before the large preview"
        statuses = page.attributes("span", "class", "coming-soon-label")
        assert len(statuses) == 1, "Only macOS should have a coming-soon status"
        assert len(page.attributes("span", "class", "available-label")) == 2, "Windows and Linux must be available"
        assert page.attributes("a", "href", "/#desktop"), "Hero should link to desktop availability"
        app = next(node for node in nodes if node.get("@type") == "MobileApplication")
        assert app["operatingSystem"] == "Android", "Unreleased platforms must not be advertised as available in app schema"
        desktop = next(node for node in nodes if node.get("@type") == "SoftwareApplication")
        assert desktop["operatingSystem"] == "Windows, Linux" and desktop["softwareVersion"] == "1.6.0"
        expected_downloads = [
            "https://apps.microsoft.com/detail/9nmvnh7j7655?hl=en-US&gl=IN",
            "https://github.com/impintooprajapati/digital-mala-landing-page/releases/download/v1.6.0/DigitalMala-Windows-x64.zip",
            "https://github.com/impintooprajapati/digital-mala-landing-page/releases/download/v1.6.0/digital_mala_app.msix",
            "https://github.com/impintooprajapati/digital-mala-landing-page/releases/download/v1.6.0/DigitalMala-Linux-x64.tar.gz",
        ]
        for download in expected_downloads:
            assert page.attributes("a", "href", download), f"Missing verified download: {download}"
        assert (BUILD / "images/desktop/counter.png").is_file()
        assert (BUILD / "images/desktop/setup.png").is_file()
        assert (BUILD / "images/desktop/languages.png").is_file()
        assert app["offers"]["price"] == "0"
        assert "aggregateRating" not in app
        assert page.attributes("link", "rel", "preload")
    else:
        assert "BreadcrumbList" in types
    for tag, attributes in page.tags:
        asset = attributes.get("src") if tag == "img" else attributes.get("href") if tag == "link" else None
        if asset and asset.startswith("/"):
            assert (BUILD / urlparse(asset).path.lstrip("/")).is_file(), f"{route}: missing {asset}"
    print(f"PASS {route}: unique metadata, canonical, social tags, headings, schema and assets")

sitemap = ElementTree.parse(BUILD / "sitemap.xml")
locations = {element.text for element in sitemap.findall(".//{*}loc")}
assert locations == {SITE + route for route in ROUTES}, "Sitemap and canonicals must agree"
assert f"Sitemap: {SITE}/sitemap.xml" in (BUILD / "robots.txt").read_text()
print("PASS sitemap and robots.txt")
