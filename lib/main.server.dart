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
  runApp(
    Document(
      title: 'Digital Mala — Free Offline Japa & Mantra Counter',
      lang: 'en',
      viewport: 'width=device-width, initial-scale=1.0',
      meta: {'author': 'Digital Mala', 'theme-color': '#FCF9F3'},
      head: [
        // Preconnect hints for Google Fonts
        link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
        link(rel: 'preconnect', href: 'https://fonts.gstatic.com', attributes: {'crossorigin': ''}),
        // Load Google Fonts
        link(
          rel: 'stylesheet',
          href:
              'https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=Inter:wght@300;400;500;600;700&display=swap',
        ),
        // Import the custom external CSS stylesheet
        link(rel: 'stylesheet', href: '/styles.css'),
        // Set favicon and touch icon sizes
        link(rel: 'icon', type: 'image/x-icon', href: '/favicon.ico'),
        link(rel: 'icon', type: 'image/png', href: '/favicon-32x32.png', attributes: {'sizes': '32x32'}),
        link(rel: 'icon', type: 'image/png', href: '/favicon-16x16.png', attributes: {'sizes': '16x16'}),
        link(rel: 'apple-touch-icon', href: '/apple-touch-icon.png', attributes: {'sizes': '180x180'}),
        // Lightweight scroll, navigation and keyboard accessibility helpers
        script(
          content: '''
        window.addEventListener('DOMContentLoaded', () => {
          let pending = false;
          const updateScroll = () => {
            pending = false;
            const navbar = document.querySelector('.navbar');
            navbar?.classList.toggle('scrolled', window.scrollY > 50);
            let current = '';
            document.querySelectorAll('section[id]').forEach(section => {
              if (section.getBoundingClientRect().top <= 150) current = section.id;
            });
            document.querySelectorAll('.nav-link').forEach(link => {
              const active = link.getAttribute('href') === '/#' + current;
              link.classList.toggle('active', active);
              if (active) link.setAttribute('aria-current', 'location');
              else link.removeAttribute('aria-current');
            });
            const bar = document.querySelector('.compact-download');
            const hero = document.querySelector('.hero');
            const download = document.querySelector('#download');
            if (bar && hero && download) {
              const show = window.innerWidth <= 700 &&
                hero.getBoundingClientRect().bottom < 80 &&
                download.getBoundingClientRect().top > window.innerHeight &&
                !document.documentElement.classList.contains('drawer-open');
              bar.classList.toggle('is-visible', show);
              bar.setAttribute('aria-hidden', String(!show));
              bar.inert = !show;
            }
          };
          const scheduleUpdate = () => {
            if (!pending) { pending = true; requestAnimationFrame(updateScroll); }
          };
          window.addEventListener('scroll', scheduleUpdate, { passive: true });
          window.addEventListener('resize', scheduleUpdate, { passive: true });
          updateScroll();

          const syncDrawer = () => {
            const menu = document.querySelector('.mobile-drawer');
            const isOpen = !!menu?.classList.contains('open');
            document.documentElement.classList.toggle('drawer-open', isOpen);
            if (menu) menu.inert = !isOpen;
            document.querySelectorAll('main, footer').forEach(el => { el.inert = isOpen; });
            scheduleUpdate();
          };
          syncDrawer();
          new MutationObserver(syncDrawer).observe(document.body, {
            subtree: true, childList: true, attributes: true, attributeFilter: ['class']
          });
          document.addEventListener('keydown', event => {
            const menu = document.querySelector('.mobile-drawer.open');
            if (!menu) return;
            const toggle = document.querySelector('.hamburger');
            if (event.key === 'Escape') { toggle.click(); toggle.focus(); }
            if (event.key === 'Tab') {
              const controls = [toggle, ...menu.querySelectorAll('a')];
              const index = controls.indexOf(document.activeElement);
              const next = (index + (event.shiftKey ? -1 : 1) + controls.length) % controls.length;
              event.preventDefault();
              controls[next].focus();
            }
          });
        });
        ''',
        ),
      ],
      body: App(),
    ),
  );
}
