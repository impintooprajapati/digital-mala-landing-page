# Digital Mala - Landing Page

A premium, modern, responsive landing page for **Digital Mala**, built using **Jaspr** (the modern web framework for Dart).

Designed to reflect the app's serene spiritual aesthetic, this website introduces users to the privacy-first Japa Counter application, demonstrating its features, design, and user flows.

## 🌸 Serene & Spiritual Design

- **App-aligned Theme:** Warm ivory (`#FCF9F3`), deep brown (`#251D17`) and muted saffron (`#D79A16`).
- **Micro-interactions:** Restrained hover states and accordion transitions with reduced-motion support.
- **Device Mockups:** CSS device frames present the existing Android app screenshots in contextual product showcases.
- **Privacy & Performance:** Static pre-rendered pages, lazy-loaded supporting screenshots and a prioritized hero image. No analytics or tracking scripts are added.

---

## 🛠️ Tech Stack & Structure

- **Core:** Dart & [Jaspr Framework](https://github.com/schultek/jaspr)
- **Styling:** Custom Vanilla CSS (located in `web/styles.css`) for fine-grained style controls.
- **Assets:** Google Play Store app screenshots and transparent logos hosted locally in `web/images/`.

### Folder Architecture

```text
├── lib/
│   ├── components/            # Reusable Jaspr Dart components (Navbar, Hero, FAQ, Carousel...)
│   ├── constants/             # Central styling tokens (Theme, colors)
│   ├── app.dart               # Main client-side entry and routing definitions
│   ├── main.client.dart       # Client side entry point compiled to JS
│   └── main.server.dart       # Server side entry point for pre-rendering
├── web/
│   ├── images/                # App logos and visual screenshots
│   ├── styles.css             # Premium custom global stylesheet
│   └── robots.txt             # Search engine optimization indexing instructions
├── pubspec.yaml               # Project dependencies and configuration
└── README.md                  # Project documentation (this file)
```

---

## 🚀 Getting Started

### Prerequisites

Make sure you have the Dart SDK installed (v3.0.0+ recommended) and the Jaspr CLI tool activated globally:

```bash
dart pub global activate jaspr_cli
```

### Installation

1. Clone the project repository.
2. Run package dependency retrieval:

```bash
dart pub get
```

### Run Locally (Development Server)

Start the development server with live reload enabled.
> **Note:** The default port has been configured to **`8082`** in `pubspec.yaml` to avoid port conflict issues with local Jenkins configurations listening on port `8080`.

```bash
dart pub global run jaspr_cli:jaspr serve
```

This will compile client-side Dart to Javascript on the fly and serve your app at `http://localhost:8082`.

---

## 📦 Production Build

To pre-render the landing page statically for deployment:

```bash
dart pub global run jaspr_cli:jaspr build
```

This command will:
1. Compile the web assets (Dart compiler to JS).
2. Start a local server briefly to crawl the routes.
3. Pre-render the home route (`/`) as a static HTML file.
4. Output the production-ready static assets directly into the `/build/jaspr` folder.

You can serve the `/build/jaspr` folder using any static host (GitHub Pages, Firebase Hosting, Netlify, Nginx, etc.).

---

## 📝 SEO & Analytics Ready

- Each route renders a unique title, description, canonical, Open Graph and Twitter metadata through `lib/components/page_seo.dart`. These are present in the static HTML before JavaScript runs.
- The homepage includes linked `WebSite`, `WebPage` and `MobileApplication` JSON-LD. Legal and release-note pages retain their own breadcrumb schema. No unverified rating or review markup is emitted.
- The production origin is `https://digitalmala.app`. If the domain changes, update `siteUrl`, breadcrumb URLs, `web/sitemap.xml` and `web/robots.txt` together.
- Keep sitemap modification dates accurate when pages change.

### Validation

```bash
dart analyze
dart pub global run jaspr_cli:jaspr build
python3 scripts/verify_seo.py
node scripts/test_ui_runtime.mjs
```

The SEO check validates all four generated routes, unique metadata, canonical/sitemap consistency, social tags, one H1, structured-data scope and local assets. The runtime check uses isolated test fixtures, not a browser; responsive visual checks still need to be performed separately.

After deployment, submit `https://digitalmala.app/sitemap.xml` in Google Search Console and inspect the live pages. Local checks do not prove indexing or rankings.
