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

          // Links Column
          div(classes: 'footer-links-col', [
            h4([text('Legal & App')]),
            ul([
              li([a(href: '/privacy-policy', [text('Privacy Policy')])]),
              li([a(href: '/terms-of-service', [text('Terms of Service')])]),
              li([
                a(
                  href: 'https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app', 
                  target: Target.blank, 
                  [text('Get on Google Play')]
                )
              ])
            ])
          ]),
        ]),

        // Bottom Copyright
        div(classes: 'footer-bottom', [
          span([text('© ${DateTime.now().year} Digital Mala. All rights reserved.')]),
          span([text('v1.0.0 • Proudly Made with Devotion')])
        ])
      ])
    ]);
  }
}
