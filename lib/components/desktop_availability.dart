import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'play_store_button.dart';

class DesktopAvailability extends StatelessComponent {
  const DesktopAvailability({super.key});

  static const platforms = [
    ('Windows', '<path d="M3 5.5 10.5 4.5v7H3zm10-1.4L21 3v8.5h-8zM3 13.5h7.5v7L3 19.5zm10 0h8V22l-8-1.1z"/>'),
    ('macOS', '<rect x="4" y="4" width="16" height="12" rx="2"/><path d="m4 16-2 4h20l-2-4M9 20h6"/>'),
    ('Linux', '<rect x="3" y="4" width="18" height="16" rx="3"/><path d="m7 9 3 3-3 3M13 15h4"/>'),
  ];

  @override
  Component build(BuildContext context) => div(
    id: 'desktop',
    classes: 'desktop-availability',
    [
      div(classes: 'desktop-availability-copy', [
        span(classes: 'eyebrow', [
          span(classes: 'development-dot', attributes: {'aria-hidden': 'true'}, []),
          Component.text('Desktop editions · In development'),
        ]),
        h3([Component.text('Your practice, soon on desktop.')]),
        p([
          Component.text(
            'I’m bringing Digital Mala to Windows, macOS and Linux, so your daily ritual can have a place on your desktop too.',
          ),
        ]),
        a(
          href: playStoreUrl,
          target: Target.blank,
          classes: 'desktop-android-link',
          attributes: {
            'rel': 'noopener noreferrer',
            'aria-label': 'Get the available Android app on Google Play (opens in a new tab)',
          },
          [
            Component.text('Available now for Android'),
            span(attributes: {'aria-hidden': 'true'}, [Component.text('↗')]),
          ],
        ),
      ]),
      ul(
        classes: 'desktop-platforms',
        attributes: {'aria-label': 'Upcoming desktop versions'},
        [
          for (final platform in platforms)
            li([
              span(
                classes: 'desktop-platform-icon',
                attributes: {'aria-hidden': 'true'},
                [
                  RawText(
                    '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.4" stroke-linecap="round" stroke-linejoin="round">${platform.$2}</svg>',
                  ),
                ],
              ),
              strong([Component.text(platform.$1)]),
              span(classes: 'coming-soon-label', [Component.text('Coming soon')]),
            ]),
        ],
      ),
    ],
  );
}
