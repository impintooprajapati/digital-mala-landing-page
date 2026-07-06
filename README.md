# Digital Mala - Landing Page

A premium, modern, responsive landing page for **Digital Mala**, built using **Jaspr** (the modern web framework for Dart).

Designed to reflect the app's serene spiritual aesthetic, this website introduces users to the privacy-first Japa Counter application, demonstrating its features, design, and user flows.

## 🌸 Serene & Spiritual Design

- **App-aligned Theme:** Follows the calm, premium warm ivory (`#FAF7F2`) and sacred gold (`#C99512`) color palette.
- **Micro-interactions:** Smooth scroll-reveal animations using modern Intersection Observer logic, high-fidelity responsive hover states, and transitions.
- **Device Mockups:** High-quality, custom iPhone mockups designed in pure CSS to showcase the real app screenshots from the Google Play Store cleanly.
- **Privacy & Performance:** Fully static page pre-rendering for optimal SEO, lightning-fast performance, and absolute security.

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

- Meta Description tags and Open Graph (OG) tags are configured dynamically inside the server entrypoint ([main.server.dart](file:///Users/pintoo/development/projects/digital-mala-landing-page/lib/main.server.dart)).
- Structured JSON-LD metadata for a `MobileApplication` schema is included natively to enhance search engine visibility.
