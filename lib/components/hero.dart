import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'hero', [
      div(classes: 'mandala-bg', []),

      // Floating lotus decorations
      div(classes: 'lotus-decor-left animate-float-slow', [
        raw('''
        <svg viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M50 15C53 35 47 35 50 65C47 35 53 35 50 15Z" fill="#C99512" opacity="0.3"/>
          <path d="M50 30C65 40 60 50 50 65C60 50 65 40 50 30Z" fill="#C99512" opacity="0.2"/>
          <path d="M50 30C35 40 40 50 50 65C40 50 35 40 50 30Z" fill="#C99512" opacity="0.2"/>
          <path d="M50 45C75 50 65 65 50 65C65 65 75 50 50 45Z" fill="#C99512" opacity="0.15"/>
          <path d="M50 45C25 50 35 65 50 65C35 65 25 50 50 45Z" fill="#C99512" opacity="0.15"/>
        </svg>
        ''')
      ]),

      div(classes: 'lotus-decor-right animate-float', [
        raw('''
        <svg viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M50 15C53 35 47 35 50 65C47 35 53 35 50 15Z" fill="#C99512" opacity="0.3"/>
          <path d="M50 30C65 40 60 50 50 65C60 50 65 40 50 30Z" fill="#C99512" opacity="0.2"/>
          <path d="M50 30C35 40 40 50 50 65C40 50 35 40 50 30Z" fill="#C99512" opacity="0.2"/>
          <path d="M50 45C75 50 65 65 50 65C65 65 75 50 50 45Z" fill="#C99512" opacity="0.15"/>
          <path d="M50 45C25 50 35 65 50 65C35 65 25 50 50 45Z" fill="#C99512" opacity="0.15"/>
        </svg>
        ''')
      ]),

      div(classes: 'container', [
        div(classes: 'hero-grid', [
          // Left: Copywriting and CTAs
          div(classes: 'hero-content animate-fade-in-up', [
            // Premium badge
            div(classes: 'hero-badge', [
              raw('<svg viewBox="0 0 24 24" width="16" height="16" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>'),
              span([text('Ad-Free · Offline · Privacy-First')]),
            ]),

            h1(classes: 'hero-title', [
              raw('Chant with <span>Mindfulness</span>.<br/>Track with <span>Devotion</span>.')
            ]),

            p(classes: 'hero-desc', [
              text('Digital Mala is a premium Japa Counter app that simulates physical prayer beads with lifelike haptic feedback. Beautifully simple, offline-first, and designed to cultivate daily chanting consistency in your spiritual practice.')
            ]),

            // Premium Play Store button
            a(
              href: 'https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app',
              target: Target.blank,
              classes: 'play-store-btn hero-play-btn',
              attributes: {'aria-label': 'Download Digital Mala on Google Play (opens in new tab)'},
              [
                raw('<svg viewBox="0 0 24 24" width="28" height="28" fill="currentColor"><path d="M12.54 15.64l-2.56 1.28c-.8.4-1.6.6-2.4.6-2.2 0-4.1-1.5-4.5-3.6-.2-.9-.3-1.8-.3-2.7 0-1 .1-1.9.3-2.8.5-2.1 2.3-3.7 4.6-3.7 1 0 1.9.2 2.8.7.3.1.6.2.9.2l.2 0c.5 0 1-.1 1.4-.3v1.4h-2.5v1.2h3.1v-1.2h2.2v-1.4h-2.2v-2.1c0-1.4 1.1-2.6 2.5-2.6 1.3 0 2.3.7 2.7 1.5.2.3.2.6 0 .8-.3.4-.8.7-1.3.7-.6 0-1.2-.2-1.6-.6l-.1 0zm-6.7-5.5c-.8 1.6-1.3 3.4-1.3 5.3 0 3.7 2.6 6.7 6.1 6.7 1.5 0 2.9-.5 4-1.4.2-.2.3-.5.2-.7-.1-.2-.4-.3-.7-.3-.5.1-1 .1-1.5.1-1.6 0-3-1-3.5-2.5-.2-.6-.3-1.3-.3-2 0-2.4 1.6-4.4 3.7-4.9.6-.2 1.2-.3 1.8-.3.3 0 .6.1.8.2.4.3.5.8.3 1.2-.5 1.2-1.3 2.3-2.2 3.2zm6.5 4.9c-.1.2-.3.4-.4.6-.2.2-.5.3-.7.2-.3-.1-.5-.4-.5-.7 0-.3.2-.5.5-.6.2-.1.5-.1.7 0 .3.2.4.5.4.7z"></path></svg>'),
                div(classes: 'play-btn-text', [
                  span(classes: 'play-btn-label', [text('Get it on')]),
                  span(classes: 'play-btn-brand', [text('Google Play')]),
                ]),
              ],
            ),

            // Trust Indicators
            div(classes: 'trust-indicators', [
              _TrustItem(value: '1K+', label: 'Practitioners'),
              _TrustItem(value: '100%', label: 'Offline'),
              _TrustItem(value: 'Zero', label: 'Ads'),
              _TrustItem(value: '12', label: 'Languages'),
            ]),
          ]),

          // Right: Premium Phone Mockup
          div(classes: 'hero-mockup-container', [
            div(classes: 'mockup-glow animate-spin-slow', []),
            div(classes: 'phone-mockup animate-float', [
              div(classes: 'phone-screen', [
                img(
                  src: 'images/screenshots_raw/1.png',
                  alt: 'Digital Mala Japa Counter Bead Screen',
                  loading: MediaLoading.eager,
                ),
              ]),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}

class _TrustItem extends StatelessComponent {
  final String value;
  final String label;

  const _TrustItem({required this.value, required this.label});

  @override
  Component build(BuildContext context) {
    return div(classes: 'trust-item', [
      span(classes: 'trust-value', [text(value)]),
      span(classes: 'trust-label', [text(label)]),
    ]);
  }
}
