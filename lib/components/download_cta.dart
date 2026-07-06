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
                h2([text('Begin Your Sadhana Today')]),
                p([
                  text('Take your mantra chanting practice to the next level with a distraction-free, privacy-first companion. Completely free to use with zero ads.')
                ]),
                a(
                  href: 'https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app',
                  target: Target.blank,
                  classes: 'play-store-btn',
                  [
                    img(
                      src: 'https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png',
                      alt: 'Get it on Google Play',
                      styles: Styles(height: 72.px)
                    )
                  ]
                )
              ]),

              // Right mockup screenshot
              div(classes: 'cta-mockup', [
                img(
                  src: 'images/screenshots_raw/0.png',
                  alt: 'Digital Mala Heatmap and Streak insights',
                  loading: MediaLoading.lazy,
                )
              ])
            ])
          ])
        ])
      ]
    );
  }
}
