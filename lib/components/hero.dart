import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'phone_mockup.dart';
import '../constants/downloads.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) => section(classes: 'hero', [
    div(classes: 'hero-ambient-spotlight', attributes: {'aria-hidden': 'true'}, []),
    div(classes: 'container hero-container', [
      // Top Announcement Pill
      a(href: '/#whats-new', classes: 'hero-announcement-badge', [
        span(classes: 'badge-pill', [Component.text('v$desktopVersion')]),
        span(classes: 'badge-text', [
          Component.text('Version 2.0.0 is Here · Now on macOS, Windows, Linux & Mobile'),
        ]),
        span(classes: 'badge-arrow', attributes: {'aria-hidden': 'true'}, [Component.text('→')]),
      ]),

      span(classes: 'hero-product-label', [Component.text('Digital Mala · Sacred Mantra & Japa Companion')]),

      // Monumental Hero Headline
      h1(classes: 'hero-title', [
        Component.text('Your daily practice. '),
        br(),
        span(classes: 'hero-title-accent', [Component.text('Reimagined.')]),
      ]),

      // Hero Subheadline
      p(classes: 'hero-desc', [
        Component.text(
          'A peaceful digital space for your daily Jaap, mindfulness, and spiritual discipline — thoughtfully crafted for Mobile, Desktop, and beyond.',
        ),
      ]),

      // Download Action Bar (Apple, Windows, Linux, Mobile)
      div(classes: 'hero-download-block', [
        span(classes: 'hero-download-label', [Component.text('Download Digital Mala v$desktopVersion')]),
        div(classes: 'hero-download-grid', [
          //  macOS DMG
          a(
            href: macosDmgUrl,
            classes: 'hero-dl-btn macos-btn',
            attributes: {'aria-label': 'Download Version 2.0.0 for macOS (Universal DMG)'},
            [
              span(classes: 'dl-platform-icon', attributes: {'aria-hidden': 'true'}, [
                RawText(
                  '<svg viewBox="0 0 24 24" fill="currentColor"><path d="M18.71 19.5c-.83 1.24-1.71 2.45-3.05 2.47-1.34.03-1.77-.79-3.29-.79-1.53 0-2 .77-3.27.82-1.31.05-2.3-1.32-3.14-2.53C4.25 17 2.94 12.45 4.7 9.39c.87-1.52 2.43-2.48 4.12-2.51 1.28-.02 2.5.87 3.29.87.78 0 2.26-1.07 3.81-.91.65.03 2.47.26 3.64 1.98-.09.06-2.17 1.28-2.15 3.81.03 3.02 2.65 4.03 2.68 4.04-.03.07-.42 1.44-1.38 2.83M15.97 6.84c.66-.82 1.11-1.96.99-3.1-.96.04-2.12.64-2.8 1.44-.6.69-1.12 1.83-.98 2.94 1.07.08 2.15-.55 2.79-1.28z"/></svg>',
                ),
              ]),
              div(classes: 'dl-btn-meta', [
                span(classes: 'dl-platform', [Component.text('macOS')]),
                strong(classes: 'dl-package', [Component.text('Universal DMG')]),
              ]),
            ],
          ),

          // 🪟 Windows MSIX / Zip
          a(
            href: '/#desktop',
            classes: 'hero-dl-btn windows-btn',
            attributes: {'aria-label': 'Download Version 2.0.0 for Windows (MSIX or ZIP)'},
            [
              span(classes: 'dl-platform-icon', attributes: {'aria-hidden': 'true'}, [
                RawText(
                  '<svg viewBox="0 0 24 24" fill="currentColor"><path d="M3 3h8.2v8.2H3V3zm9.8 0H21v8.2h-8.2V3zM3 12.8h8.2V21H3v-8.2zm9.8 0H21V21h-8.2v-8.2z"/></svg>',
                ),
              ]),
              div(classes: 'dl-btn-meta', [
                span(classes: 'dl-platform', [Component.text('Windows')]),
                strong(classes: 'dl-package', [Component.text('Store / MSIX / Zip')]),
              ]),
            ],
          ),

          // 🐧 Linux x64
          a(
            href: linuxArchiveUrl,
            classes: 'hero-dl-btn linux-btn',
            attributes: {'aria-label': 'Download Version 2.0.0 for Linux (x64 tar.gz)'},
            [
              span(classes: 'dl-platform-icon', attributes: {'aria-hidden': 'true'}, [
                RawText(
                  '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="4" width="18" height="16" rx="3"/><path d="m7 9 3 3-3 3M13 15h4"/></svg>',
                ),
              ]),
              div(classes: 'dl-btn-meta', [
                span(classes: 'dl-platform', [Component.text('Linux')]),
                strong(classes: 'dl-package', [Component.text('x64 tar.gz')]),
              ]),
            ],
          ),

          // 📱 Android / iOS
          a(
            href: playStoreUrl,
            target: Target.blank,
            classes: 'hero-dl-btn mobile-btn',
            attributes: {
              'rel': 'noopener noreferrer',
              'aria-label': 'Download Version 2.0.0 on Google Play / iOS (opens in a new tab)',
            },
            [
              span(classes: 'dl-platform-icon', attributes: {'aria-hidden': 'true'}, [
                RawText(
                  '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><rect x="6" y="2" width="12" height="20" rx="3"/><path d="M12 18h.01"/></svg>',
                ),
              ]),
              div(classes: 'dl-btn-meta', [
                span(classes: 'dl-platform', [Component.text('Mobile')]),
                strong(classes: 'dl-package', [Component.text('Android & iOS')]),
              ]),
            ],
          ),
        ]),
      ]),

      // Platform Note & Verification Links
      p(classes: 'hero-platform-note', [
        Component.text('Native on Apple Silicon & Intel macOS (DMG), Windows, Linux, Android & iOS. '),
        a(href: '/#desktop', [Component.text('Desktop guide & files →')]),
        Component.text(' · '),
        a(
          href: githubReleaseUrl,
          target: Target.blank,
          attributes: {'rel': 'noopener noreferrer', 'aria-label': 'GitHub Release v2.0.0 (opens in a new tab)'},
          [Component.text('GitHub Release v$desktopVersion ↗')],
        ),
      ]),

      // Supporting Trust Marks
      p(classes: 'hero-trust-strip', [
        span(classes: 'trust-item', [Component.text('100% Offline')]),
        span(classes: 'trust-dot', attributes: {'aria-hidden': 'true'}, [Component.text('·')]),
        span(classes: 'trust-item', [Component.text('No Ads')]),
        span(classes: 'trust-dot', attributes: {'aria-hidden': 'true'}, [Component.text('·')]),
        span(classes: 'trust-item', [Component.text('No Account Required')]),
      ]),

      // Monumental Product Centerpiece Mockup (Cinematic 3-Device Flagship Presentation)
      div(classes: 'hero-centerpiece', [
        div(classes: 'centerpiece-aura', attributes: {'aria-hidden': 'true'}, []),
        div(classes: 'hero-devices-stage', [
          // Left Supporting Phone: Sadhana Insights & Devotee Profile (m3.png)
          div(classes: 'hero-secondary-device device-left', attributes: {'aria-hidden': 'true'}, [
            const PhoneMockup(
              image: '/images/screenshots_raw/m3.png',
              alt: '',
              classes: 'secondary-mockup',
            ),
          ]),

          // Center Primary Flagship Device: Sacred Jap Counter (m4.png)
          div(classes: 'hero-primary-device', [
            const PhoneMockup(
              image: '/images/screenshots_raw/m4.png',
              alt: 'Digital Mala v2.0.0 sacred jaap counter with tactile touch beads, round progress and sankalp tracking',
              eager: true,
              classes: 'primary-mockup',
            ),
            // Floating Mindful Badge Left
            div(classes: 'floating-badge floating-badge-left', [
              span(classes: 'badge-glow-dot', attributes: {'aria-hidden': 'true'}, []),
              div([
                strong([Component.text('108 Sacred Beads')]),
                span([Component.text('Tactile Haptic Feedback')]),
              ]),
            ]),
            // Floating Mindful Badge Right
            div(classes: 'floating-badge floating-badge-right', [
              span(classes: 'badge-glow-dot badge-glow-amber', attributes: {'aria-hidden': 'true'}, []),
              div([
                strong([Component.text('100% Offline')]),
                span([Component.text('Zero Cloud Dependency')]),
              ]),
            ]),
          ]),

          // Right Supporting Phone: Pranayama Guided Breathwork (m8.png)
          div(classes: 'hero-secondary-device device-right', attributes: {'aria-hidden': 'true'}, [
            const PhoneMockup(
              image: '/images/screenshots_raw/m8.png',
              alt: '',
              classes: 'secondary-mockup',
            ),
          ]),
        ]),
      ]),
    ]),
  ]);
}
