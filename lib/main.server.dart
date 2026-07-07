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
      // Set favicon and touch icon sizes
      link(rel: 'icon', type: 'image/x-icon', href: 'favicon.ico'),
      link(rel: 'icon', type: 'image/png', href: 'favicon-32x32.png', attributes: {'sizes': '32x32'}),
      link(rel: 'icon', type: 'image/png', href: 'favicon-16x16.png', attributes: {'sizes': '16x16'}),
      link(rel: 'apple-touch-icon', href: 'apple-touch-icon.png', attributes: {'sizes': '180x180'}),
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

          // Active navigation section highlighter
          const navLinks = document.querySelectorAll('.nav-links .nav-link, .mobile-drawer .nav-link');
          const sections = document.querySelectorAll('section[id]');
          
          window.addEventListener('scroll', () => {
            let current = '';
            sections.forEach(section => {
              const sectionTop = section.offsetTop;
              const sectionHeight = section.clientHeight;
              if (window.scrollY >= (sectionTop - 150)) {
                current = section.getAttribute('id');
              }
            });
            
            navLinks.forEach(link => {
              link.classList.remove('active');
              const href = link.getAttribute('href');
              if (href === '#' + current || href === '/#' + current) {
                link.classList.add('active');
              }
            });
          });
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
