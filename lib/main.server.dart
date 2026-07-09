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
      'description': 'Digital Mala is a premium, privacy-first Japa Counter for daily chanting and spiritual meditation. 100% offline, zero ads, custom mantras, streaks and traditional bead styles.',
      'keywords': 'digital mala, japa counter, mantra chanting, meditation bead counter, spiritual tracker, offline japa, privacy first counter, rudraksha bead counter, tulsi beads',
      'author': 'Digital Mala App',
      'theme-color': '#FAF7F2',
      // Open Graph Tags
      'og:title': 'Digital Mala - Japa Counter & Spiritual Chanting',
      'og:description': 'Digital Mala is a premium, privacy-first Japa Counter for daily chanting and spiritual meditation. 100% offline, zero ads, custom mantras, streaks and traditional bead styles.',
      'og:image': 'https://digitalmala.app/images/Feature_Graphic.png',
      'og:image:width': '1200',
      'og:image:height': '630',
      'og:url': 'https://digitalmala.app/',
      'og:type': 'product',
      'og:locale': 'en_US',
      'og:site_name': 'Digital Mala',
      // Twitter Card Tags
      'twitter:card': 'summary_large_image',
      'twitter:title': 'Digital Mala - Japa Counter & Spiritual Chanting',
      'twitter:description': 'Digital Mala is a premium, privacy-first Japa Counter for daily chanting and spiritual meditation. 100% offline, zero ads, custom mantras, streaks and traditional bead styles.',
      'twitter:image': 'https://digitalmala.app/images/Feature_Graphic.png',
    },
    head: [
      // Preconnect hints for Google Fonts
      link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
      link(rel: 'preconnect', href: 'https://fonts.gstatic.com', attributes: {'crossorigin': ''}),
      // Load Google Fonts
      link(rel: 'stylesheet', href: 'https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=Inter:wght@300;400;500;600;700&display=swap'),
      // Canonical URL
      link(rel: 'canonical', href: 'https://digitalmala.app/'),
      // Import the custom external CSS stylesheet
      link(rel: 'stylesheet', href: 'styles.css'),
      // Set favicon and touch icon sizes
      link(rel: 'icon', type: 'image/x-icon', href: 'favicon.ico'),
      link(rel: 'icon', type: 'image/png', href: 'favicon-32x32.png', attributes: {'sizes': '32x32'}),
      link(rel: 'icon', type: 'image/png', href: 'favicon-16x16.png', attributes: {'sizes': '16x16'}),
      link(rel: 'apple-touch-icon', href: 'apple-touch-icon.png', attributes: {'sizes': '180x180'}),
      link(rel: 'manifest', href: 'manifest.json'),
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

          // Lock body scroll when mobile drawer is open
          const drawer = document.querySelector('.mobile-drawer');
          if (drawer) {
            const syncDrawerScroll = () => {
              document.documentElement.classList.toggle('drawer-open', drawer.classList.contains('open'));
            };
            new MutationObserver(syncDrawerScroll).observe(drawer, { attributes: true, attributeFilter: ['class'] });
          }

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
      // Structured Data: MobileApplication + Reviews
      script(
        attributes: {'type': 'application/ld+json'},
        content: '''
        {
          "@context": "https://schema.org",
          "@graph": [
            {
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
            },
            {
              "@type": "ItemList",
              "itemListElement": [
                {
                  "@type": "Review",
                  "itemReviewed": {
                    "@type": "MobileApplication",
                    "name": "Digital Mala - Japa Counter"
                  },
                  "author": {
                    "@type": "Person",
                    "name": "Prachi Thakkar"
                  },
                  "reviewBody": "Exactly what I was searching for! Minimalist, clean, and 100% private. The haptic feedback makes it feel like I am moving real prayer beads. I highly appreciate that there are absolutely no ads.",
                  "reviewRating": {
                    "@type": "Rating",
                    "ratingValue": "5"
                  }
                },
                {
                  "@type": "Review",
                  "itemReviewed": {
                    "@type": "MobileApplication",
                    "name": "Digital Mala - Japa Counter"
                  },
                  "author": {
                    "@type": "Person",
                    "name": "Tushar Pandya"
                  },
                  "reviewBody": "The daily streaks and heatmap tracking kept me disciplined. It is so easy to add custom mantras and choose bead styles like Tulsi. It has become my favorite spiritual travel app.",
                  "reviewRating": {
                    "@type": "Rating",
                    "ratingValue": "5"
                  }
                },
                {
                  "@type": "Review",
                  "itemReviewed": {
                    "@type": "MobileApplication",
                    "name": "Digital Mala - Japa Counter"
                  },
                  "author": {
                    "@type": "Person",
                    "name": "Sneha Rao"
                  },
                  "reviewBody": "A rare gem on the Play Store. No login, no cloud sync, no tracking permissions. All database storage is local. Thank you developer for respecting user privacy and keeping it ad-free.",
                  "reviewRating": {
                    "@type": "Rating",
                    "ratingValue": "5"
                  }
                },
                {
                  "@type": "Review",
                  "itemReviewed": {
                    "@type": "MobileApplication",
                    "name": "Digital Mala - Japa Counter"
                  },
                  "author": {
                    "@type": "Person",
                    "name": "Ravi Deshmukh"
                  },
                  "reviewBody": "Beautifully crafted app. The haptic feedback is incredibly satisfying and the minimalist design helps me stay focused during my daily chanting. Highly recommend to anyone on a spiritual journey.",
                  "reviewRating": {
                    "@type": "Rating",
                    "ratingValue": "5"
                  }
                },
                {
                  "@type": "Review",
                  "itemReviewed": {
                    "@type": "MobileApplication",
                    "name": "Digital Mala - Japa Counter"
                  },
                  "author": {
                    "@type": "Person",
                    "name": "Ananya Iyer"
                  },
                  "reviewBody": "I have tried many Japa counter apps but this one stands out. The privacy-first approach and the beautiful Rudraksha bead simulation make it feel truly authentic. A must-have for serious practitioners.",
                  "reviewRating": {
                    "@type": "Rating",
                    "ratingValue": "5"
                  }
                },
                {
                  "@type": "Review",
                  "itemReviewed": {
                    "@type": "MobileApplication",
                    "name": "Digital Mala - Japa Counter"
                  },
                  "author": {
                    "@type": "Person",
                    "name": "Vikram Joshi"
                  },
                  "reviewBody": "Finally an app that respects both tradition and privacy. No ads, no tracking, just pure devotion. The streak tracking has helped me maintain my daily practice for over 3 months now.",
                  "reviewRating": {
                    "@type": "Rating",
                    "ratingValue": "5"
                  }
                }
              ]
            },
            {
              "@type": "FAQPage",
              "mainEntity": [
                {
                  "@type": "Question",
                  "name": "Where is my chanting data stored?",
                  "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "All data is stored directly on your phone in a secure local database. The app operates 100% offline, meaning we do not run servers and cannot access your logs. If you uninstall the app, your local database is permanently deleted."
                  }
                },
                {
                  "@type": "Question",
                  "name": "Can I back up my progress or transfer it?",
                  "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes! You can export all your practice logs as a JSON file for local backup. You can also generate a beautifully formatted PDF report of your spiritual progress."
                  }
                },
                {
                  "@type": "Question",
                  "name": "Is the app completely free and ad-free?",
                  "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Yes. Digital Mala is created as a pure spiritual tool. It features zero ads, zero banner popups, and zero hidden tracking software. It is 100% free to download and use."
                  }
                },
                {
                  "@type": "Question",
                  "name": "How do the haptic feedback features work?",
                  "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "The app uses your mobile device's built-in haptic engine to create a subtle vibration pulse when you transition to the next bead. This allows you to count Japa without constantly looking at the screen."
                  }
                },
                {
                  "@type": "Question",
                  "name": "Can I add custom mantras and set goals?",
                  "acceptedAnswer": {
                    "@type": "Answer",
                    "text": "Absolutely. You can write custom mantras, select traditional counter limits (like 27, 54, 108, or 1008 beads), and track your statistics independently for each mantra."
                  }
                }
              ]
            }
          ]
        }
        ''',
      ),
      // Structured Data: BreadcrumbList for homepage
      script(
        attributes: {'type': 'application/ld+json'},
        content: '''
        {
          "@context": "https://schema.org",
          "@type": "BreadcrumbList",
          "itemListElement": [
            {
              "@type": "ListItem",
              "position": 1,
              "name": "Home",
              "item": "https://digitalmala.app/"
            }
          ]
        }
        ''',
      )
    ],
    body: App(),
  ));
}
