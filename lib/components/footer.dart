import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'footer', [
      div(classes: 'container', [
        div(classes: 'footer-grid', [
          // Brand Info Column
          div(classes: 'footer-brand', [
            h3(styles: const Styles(fontFamily: FontFamily('Cinzel'), fontWeight: FontWeight.bold), [
              text('Digital Mala')
            ]),
            p([
              text('A premium, privacy-focused spiritual companion for Japa chanting and mindfulness meditation. Built with respect for traditional practices.')
            ])
          ]),

          // Links Column 1
          div(classes: 'footer-links-col', [
            h4([text('Explore')]),
            ul([
              li([a(href: '#features', [text('Features')])]),
              li([a(href: '#screenshots', [text('Screenshots')])]),
              li([a(href: '#how-it-works', [text('How It Works')])]),
              li([a(href: '#faq', [text('FAQ')])])
            ])
          ]),

          // Links Column 2
          div(classes: 'footer-links-col', [
            h4([text('Support & Legal')]),
            ul([
              li([a(href: '#', [text('Privacy Policy')])]),
              li([a(href: '#', [text('Terms of Service')])]),
              li([a(href: 'mailto:support@digitalmala.app', [text('Contact Support')])]),
              li([a(href: 'https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app', target: Target.blank, [text('Google Play')])])
            ])
          ]),
        ]),

        // Bottom Copyright
        div(classes: 'footer-bottom', [
          span([text('© ${DateTime.now().year} Digital Mala. All rights reserved.')]),
          span([text('Proudly Made in India with ॐ')])
        ])
      ])
    ]);
  }
}
