import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'hero', [
      // Subtle background decoration
      div(classes: 'mandala-bg', []),
      
      // Floating spiritual graphics (SVG lotuses)
      div(classes: 'lotus-decor-left animate-float-slow', [
        raw('''
        <svg viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M50 15C53 35 47 35 50 65C47 35 53 35 50 15Z" fill="#C99512"/>
          <path d="M50 30C65 40 60 50 50 65C60 50 65 40 50 30Z" fill="#C99512" opacity="0.8"/>
          <path d="M50 30C35 40 40 50 50 65C40 50 35 40 50 30Z" fill="#C99512" opacity="0.8"/>
          <path d="M50 45C75 50 65 65 50 65C65 65 75 50 50 45Z" fill="#C99512" opacity="0.6"/>
          <path d="M50 45C25 50 35 65 50 65C35 65 25 50 50 45Z" fill="#C99512" opacity="0.6"/>
        </svg>
        ''')
      ]),
      
      div(classes: 'lotus-decor-right animate-float', [
        raw('''
        <svg viewBox="0 0 100 100" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M50 15C53 35 47 35 50 65C47 35 53 35 50 15Z" fill="#C99512"/>
          <path d="M50 30C65 40 60 50 50 65C60 50 65 40 50 30Z" fill="#C99512" opacity="0.8"/>
          <path d="M50 30C35 40 40 50 50 65C40 50 35 40 50 30Z" fill="#C99512" opacity="0.8"/>
          <path d="M50 45C75 50 65 65 50 65C65 65 75 50 50 45Z" fill="#C99512" opacity="0.6"/>
          <path d="M50 45C25 50 35 65 50 65C35 65 25 50 50 45Z" fill="#C99512" opacity="0.6"/>
        </svg>
        ''')
      ]),

      div(classes: 'container', [
        div(classes: 'hero-grid', [
          // Left: Copywriting and CTAs
          div(classes: 'hero-content animate-fade-in-up', [
            div(classes: 'hero-badge', [
              span([text('✨ Safe & Private Spiritual Companion')]),
            ]),
            h1(classes: 'hero-title', [
              raw('Chant with <span>Mindfulness</span>. <br/>Track with <span>Devotion</span>.')
            ]),
            p(classes: 'hero-desc', [
              text('Digital Mala is a clean, minimal Japa Counter app that simulates physical prayer beads with haptic feedback. Fully secure, offline-first, and designed for a peaceful meditation practice.')
            ]),
            div(classes: 'hero-actions', [
              a(
                href: 'https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app',
                target: Target.blank,
                classes: 'play-store-btn',
                [
                  img(src: 'https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png', alt: 'Get it on Google Play', styles: Styles(height: 72.px)),
                ],
              ),
            ]),
            // Trust Indicators
            div(classes: 'trust-indicators', [
              div(classes: 'trust-item', [
                span(classes: 'trust-value', [text('4.9 ★')]),
                span(classes: 'trust-label', [text('Play Store Rating')]),
              ]),
              div(classes: 'trust-item', [
                span(classes: 'trust-value', [text('100%')]),
                span(classes: 'trust-label', [text('Offline & Secure')]),
              ]),
              div(classes: 'trust-item', [
                span(classes: 'trust-value', [text('Zero')]),
                span(classes: 'trust-label', [text('Ads or Trackers')]),
              ]),
            ]),
          ]),

          // Right: Premium Phone Mockup
          div(classes: 'hero-mockup-container', [
            div(classes: 'mockup-glow animate-spin-slow', []),
            div(classes: 'phone-mockup animate-float', [
              div(classes: 'phone-screen', [
                img(src: 'images/screenshots_raw/0.png', alt: 'Digital Mala Screen'),
              ]),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}
