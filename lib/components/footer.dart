import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  static const _navLinks = [
    ('Terms of Service', '/terms-of-service'),
    ('Privacy Policy', '/privacy-policy'),
    ('Contact Support', 'mailto:digitalmala@impintooprajapati.in'),
  ];

  @override
  Component build(BuildContext context) => footer(classes: 'footer', [
    div(classes: 'container', [
      div(classes: 'footer-top', [
        div(classes: 'footer-brand', [
          a(href: '/', classes: 'footer-logo', attributes: {'aria-label': 'Digital Mala home'}, [
            img(src: '/images/logo.png', alt: '', attributes: {'width': '44', 'height': '44'}),
            span([
              Component.text('Digital '),
              span(classes: 'footer-logo-accent', [Component.text('Mala')]),
            ]),
          ]),
        ]),
        nav(
          classes: 'footer-nav',
          attributes: {'aria-label': 'Footer'},
          [
            for (final link in _navLinks)
              a(href: link.$2, [Component.text(link.$1)]),
          ],
        ),
        div(classes: 'footer-meta', [
          div(classes: 'footer-social', [
            a(
              href: 'https://x.com/impintoodev',
              target: Target.blank,
              classes: 'footer-social-link',
              attributes: {'rel': 'noopener noreferrer', 'aria-label': 'Follow on X (opens in a new tab)'},
              [
                RawText(
                  '<svg aria-hidden="true" viewBox="0 0 24 24" fill="currentColor"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"/></svg>',
                ),
              ],
            ),
            a(
              href: 'https://www.linkedin.com/in/impintooprajapati/',
              target: Target.blank,
              classes: 'footer-social-link',
              attributes: {'rel': 'noopener noreferrer', 'aria-label': 'Connect on LinkedIn (opens in a new tab)'},
              [
                RawText(
                  '<svg aria-hidden="true" viewBox="0 0 24 24" fill="currentColor"><path d="M20.45 20.45h-3.56v-5.57c0-1.33-.02-3.04-1.85-3.04-1.85 0-2.14 1.45-2.14 2.94v5.67H9.35V9h3.41v1.56h.05c.48-.9 1.63-1.85 3.36-1.85 3.6 0 4.27 2.37 4.27 5.45v6.29zM5.34 7.43a2.06 2.06 0 1 1 0-4.13 2.06 2.06 0 0 1 0 4.13zM7.12 20.45H3.56V9h3.56v11.45z"/></svg>',
                ),
              ],
            ),
            a(
              href: 'mailto:digitalmala@impintooprajapati.in',
              classes: 'footer-social-link',
              attributes: {'aria-label': 'Email Digital Mala'},
              [
                RawText(
                  '<svg aria-hidden="true" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7" stroke-linecap="round" stroke-linejoin="round"><rect x="2.5" y="4.5" width="19" height="15" rx="3"/><path d="m3 7 9 6 9-6"/></svg>',
                ),
              ],
            ),
          ]),
          p(classes: 'footer-copyright', [
            Component.text('© ${DateTime.now().year} Digital Mala. All rights reserved.'),
          ]),
        ]),
      ]),
    ]),
    div(classes: 'footer-wordmark', attributes: {'aria-hidden': 'true'}, [
      span([Component.text('Digital Mala')]),
    ]),
  ]);
}
