import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'footer', [
      div(classes: 'container', [
        div(classes: 'footer-grid', [
          div(classes: 'footer-brand', [
            a(href: '/', classes: 'footer-logo', [
              img(src: 'images/logo.png', alt: 'Digital Mala Logo'),
              h3(styles: const Styles(fontFamily: FontFamily('Cormorant Garamond'), fontWeight: FontWeight.bold), [
                text('Digital Mala')
              ]),
            ]),
            p([
              text('A premium, privacy-focused spiritual companion for Japa chanting and mindfulness meditation. Built with respect for traditional practices.')
            ])
          ]),

          div(classes: 'footer-links-col', [
            h4([text('Explore')]),
            ul([
              li([a(href: '/#features', [text('Features')])]),
              li([a(href: '/#screenshots', [text('Screenshots')])]),
              li([a(href: '/#how-it-works', [text('How It Works')])]),
              li([a(href: '/#reviews', [text('Reviews')])]),
              li([a(href: '/#faq', [text('FAQ')])]),
            ])
          ]),

          div(classes: 'footer-links-col', [
            h4([text('Legal & App')]),
            ul([
              li([a(href: '/privacy-policy', [text('Privacy Policy')])]),
              li([a(href: '/terms-of-service', [text('Terms of Service')])]),
              li([
                a(
                  href: 'https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app',
                  target: Target.blank,
                  attributes: {'aria-label': 'Download Digital Mala on Google Play (opens in new tab)'},
                  [text('Get on Google Play')]
                )
              ])
            ])
          ]),
        ]),

        // Bottom Copyright
        div(classes: 'footer-bottom', [
          span([text('© ${DateTime.now().year} Digital Mala. All rights reserved.')]),
          span([text('v1.0.0 • Proudly Made in India')])
        ])
      ])
    ]);
  }
}
