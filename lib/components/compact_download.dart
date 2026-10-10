import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// A quiet mobile shortcut shown only between the hero and final download section.
class CompactDownload extends StatelessComponent {
  const CompactDownload({super.key});
  @override
  Component build(BuildContext context) => aside(
    classes: 'compact-download',
    attributes: {'aria-label': 'Download Digital Mala', 'aria-hidden': 'true', 'inert': ''},
    [
      div([
        strong([Component.text('A moment for yourself.')]),
        span([Component.text('Free · Offline · No ads')]),
      ]),
      a(
        href: '/#download',
        classes: 'nav-btn',
        attributes: {
          'aria-label': 'Choose a platform to download Digital Mala',
        },
        [
          Component.text('Get the app'),
          span(attributes: {'aria-hidden': 'true'}, [Component.text('↓')]),
        ],
      ),
    ],
  );
}
