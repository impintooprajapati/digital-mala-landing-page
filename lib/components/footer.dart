import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'play_store_button.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});
  @override
  Component build(BuildContext context) => footer(classes: 'footer', [
    div(classes: 'container', [
      div(classes: 'footer-grid', [
        div(classes: 'footer-brand', [
          a(href: '/', classes: 'nav-logo', [
            img(src: '/images/logo.png', alt: '', attributes: {'width': '42', 'height': '42'}),
            span([Component.text('Digital Mala')]),
          ]),
          p([
            Component.text(
              'A peaceful companion for mantra chanting, mindful repetition and a practice that is your own.',
            ),
          ]),
        ]),
        nav(
          classes: 'footer-links-col',
          attributes: {'aria-label': 'Product links'},
          [
            h2([Component.text('Product')]),
            ul([
              for (final link in [
                ('Features', '/#features'),
                ('How It Works', '/#how-it-works'),
                ('App Screens', '/#screenshots'),
                ('FAQ', '/#faq'),
                ("What's New", '/changelog'),
              ])
                li([
                  a(href: link.$2, [Component.text(link.$1)]),
                ]),
            ]),
          ],
        ),
        nav(
          classes: 'footer-links-col',
          attributes: {'aria-label': 'Legal and support links'},
          [
            h2([Component.text('Legal & Support')]),
            ul([
              li([
                a(href: '/privacy-policy', [Component.text('Privacy Policy')]),
              ]),
              li([
                a(href: '/terms-of-service', [Component.text('Terms of Service')]),
              ]),
              li([
                a(href: 'mailto:digitalmala@impintooprajapati.in', [Component.text('Contact Support')]),
              ]),
              li([
                a(
                  href: playStoreUrl,
                  target: Target.blank,
                  attributes: {
                    'rel': 'noopener noreferrer',
                    'aria-label': 'Digital Mala on Google Play (opens in a new tab)',
                  },
                  [Component.text('Google Play')],
                ),
              ]),
            ]),
          ],
        ),
      ]),
      div(classes: 'footer-bottom', [
        span([Component.text('© ${DateTime.now().year} Digital Mala')]),
        span([Component.text('Made with care in India')]),
      ]),
    ]),
  ]);
}
