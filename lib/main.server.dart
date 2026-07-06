/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

import 'package:jaspr/dom.dart';
// Server-specific Jaspr import.
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(Document(
    title: 'Digital Mala - Japa Counter & Spiritual Chanting',
    lang: 'en',
    viewport: 'width=device-width, initial-scale=1.0',
    meta: {
      'description': 'Digital Mala is a premium, privacy-first Japa Counter for daily chanting and spiritual meditation. 100% offline, zero ads, custom mantras, Streaks and traditional bead styles.',
      'keywords': 'digital mala, japa counter, mantra chanting, meditation bead counter, spiritual tracker, offline japa, privacy first counter, rudraksha bead counter, tulsi beads',
      'author': 'Digital Mala App',
      // Open Graph Tags
      'og:title': 'Digital Mala - Japa Counter & Spiritual Chanting',
      'og:description': 'Mindful mantra chanting with beautiful traditional bead styles. No ads, 100% offline, privacy first.',
      'og:image': 'https://digitalmala.app/images/Feature_Graphic.png',
      'og:url': 'https://digitalmala.app/',
      'og:type': 'website',
      // Twitter Card Tags
      'twitter:card': 'summary_large_image',
      'twitter:title': 'Digital Mala - Japa Counter & Spiritual Chanting',
      'twitter:description': 'Mindful mantra chanting with beautiful traditional bead styles. No ads, 100% offline, privacy first.',
      'twitter:image': 'https://digitalmala.app/images/Feature_Graphic.png',
    },
    head: [
      // Import the custom external CSS stylesheet
      link(rel: 'stylesheet', href: 'styles.css'),
      // Set favicon
      link(rel: 'icon', type: 'image/png', href: 'images/logo.png'),
      link(rel: 'shortcut icon', type: 'image/png', href: 'images/logo.png'),
      // Scroll helper and intersection observer script
      script(
        content: '''
        window.addEventListener('DOMContentLoaded', () => {
          const navbar = document.querySelector('.navbar');
          window.addEventListener('scroll', () => {
            if (window.scrollY > 50) {
              navbar.classList.add('scrolled');
            } else {
              navbar.classList.remove('scrolled');
            }
          });
          
          const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
              if (entry.isIntersecting) {
                entry.target.classList.add('visible');
              }
            });
          }, { threshold: 0.15 });
          
          document.querySelectorAll('.reveal').forEach(el => observer.observe(el));
        });
        ''',
      ),
      // Structured Data (JSON-LD) for Mobile Application
      script(
        attributes: {'type': 'application/ld+json'},
        content: '''
        {
          "@context": "https://schema.org",
          "@type": "MobileApplication",
          "name": "Digital Mala - Japa Counter",
          "operatingSystem": "Android",
          "applicationCategory": "LifestyleApplication",
          "downloadUrl": "https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app",
          "offers": {
            "@type": "Offer",
            "price": "0",
            "priceCurrency": "USD"
          },
          "description": "Digital Mala is a private spiritual companion for Japa chanting and mindfulness meditation. Features custom mantras, haptic feedback, daily streaks, and traditional bead styles (Rudraksha, Tulsi, Sphatik). 100% offline, secure, and ad-free.",
          "aggregateRating": {
            "@type": "AggregateRating",
            "ratingValue": "4.9",
            "ratingCount": "150"
          }
        }
        ''',
      )
    ],
    body: App(),
  ));
}
