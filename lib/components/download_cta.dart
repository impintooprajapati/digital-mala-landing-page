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
            // Background mandala decor
            div(classes: 'mandala-bg', []),
            
            div(classes: 'cta-grid', [
              // Left content
              div(classes: 'cta-content', [
                h2([text('Begin Your Daily Mantra Practice')]),
                p([
                  text('Cultivate presence, mindfulness, and discipline. Take your sacred chanting rounds wherever life takes you with a secure, offline companion that respects your space.')
                ]),
                a(
                  href: 'https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app',
                  target: Target.blank,
                  classes: 'play-store-btn',
                  [
                    img(
                      src: 'https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png',
                      alt: 'Get it on Google Play',
                      styles: Styles(height: 60.px)
                    )
                  ]
                )
              ]),

              // Right mockup screenshot (using statistics/streak view)
              div(classes: 'phone-mockup cta-phone-mockup', [
                div(classes: 'phone-screen', [
                  img(
                    src: 'images/screenshots_raw/2.png',
                    alt: 'Digital Mala Heatmap and Streak insights screen',
                    loading: MediaLoading.lazy,
                  )
                ])
              ])
            ])
          ])
        ])
      ]
    );
  }
}
