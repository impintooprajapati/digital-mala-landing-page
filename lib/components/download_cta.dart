import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class DownloadCta extends StatelessComponent {
  const DownloadCta({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'download',
      classes: 'section-padding reveal',
      [
        div(classes: 'container', [
          div(classes: 'cta-banner', [
            div(classes: 'cta-grid', [
              // Left content
              div(classes: 'cta-content', [
                div(classes: 'cta-badge', [
                  span([text('Available on Google Play')]),
                  raw('<svg viewBox="0 0 24 24" width="16" height="16" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M5 12h14M12 5l7 7-7 7"></path></svg>'),
                ]),
                
                h2([raw('Begin Your Daily <span>Mantra Practice</span>')]),
                
                p([
                  text('Cultivate presence, mindfulness, and discipline. Take your sacred chanting rounds wherever life takes you with a secure, offline companion that respects your space.')
                ]),
                
                // Trust indicators (2 items only)
                div(classes: 'cta-trust-row', [
                  _TrustItem(value: '100%', label: 'Offline & Private'),
                  _TrustItem(value: '0', label: 'Ads or Trackers'),
                ]),
                
                // Play Store button - Premium
                a(
                  href: 'https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app',
                  target: Target.blank,
                  classes: 'play-store-btn',
                  attributes: {'aria-label': 'Download Digital Mala on Google Play (opens in new tab)'},
                  [
                    raw('<svg viewBox="0 0 24 24" width="28" height="28" fill="currentColor"><path d="M12.54 15.64l-2.56 1.28c-.8.4-1.6.6-2.4.6-2.2 0-4.1-1.5-4.5-3.6-.2-.9-.3-1.8-.3-2.7 0-1 .1-1.9.3-2.8.5-2.1 2.3-3.7 4.6-3.7 1 0 1.9.2 2.8.7.3.1.6.2.9.2l.2 0c.5 0 1-.1 1.4-.3v1.4h-2.5v1.2h3.1v-1.2h2.2v-1.4h-2.2v-2.1c0-1.4 1.1-2.6 2.5-2.6 1.3 0 2.3.7 2.7 1.5.2.3.2.6 0 .8-.3.4-.8.7-1.3.7-.6 0-1.2-.2-1.6-.6l-.1 0zm-6.7-5.5c-.8 1.6-1.3 3.4-1.3 5.3 0 3.7 2.6 6.7 6.1 6.7 1.5 0 2.9-.5 4-1.4.2-.2.3-.5.2-.7-.1-.2-.4-.3-.7-.3-.5.1-1 .1-1.5.1-1.6 0-3-1-3.5-2.5-.2-.6-.3-1.3-.3-2 0-2.4 1.6-4.4 3.7-4.9.6-.2 1.2-.3 1.8-.3.3 0 .6.1.8.2.4.3.5.8.3 1.2-.5 1.2-1.3 2.3-2.2 3.2zm6.5 4.9c-.1.2-.3.4-.4.6-.2.2-.5.3-.7.2-.3-.1-.5-.4-.5-.7 0-.3.2-.5.5-.6.2-.1.5-.1.7 0 .3.2.4.5.4.7z"></path></svg>'),
                    div(classes: 'play-btn-text', [
                      span(classes: 'play-btn-label', [text('Get it on')]),
                      span(classes: 'play-btn-brand', [text('Google Play')]),
                    ]),
                  ]
                )
              ]),
              
              // Right: Premium phone mockup (matches screenshots section)
              div(classes: 'cta-phone-wrapper', [
                div(classes: 'cta-phone-mockup', [
                  div(classes: 'cta-phone-frame', [
                    div(classes: 'cta-phone-screen', [
                      img(
                        src: 'images/screenshots_raw/2.png',
                        alt: 'Digital Mala Heatmap and Streak insights screen',
                        loading: MediaLoading.lazy,
                      ),
                    ]),
                  ]),
                  div(classes: 'cta-phone-glow', []),
                ]),
              ]),
            ]),
          ]),
        ]),
      ],
    );
  }
}

class _TrustItem extends StatelessComponent {
  final String value;
  final String label;
  
  const _TrustItem({required this.value, required this.label});

  @override
  Component build(BuildContext context) {
    return div(classes: 'cta-trust-item', [
      div(classes: 'cta-trust-value', [text(value)]),
      div(classes: 'cta-trust-label', [text(label)]),
    ]);
  }
}