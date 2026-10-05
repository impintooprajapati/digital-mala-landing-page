import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'play_store_button.dart';

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
        href: playStoreUrl,
        target: Target.blank,
        classes: 'nav-btn',
        attributes: {
          'rel': 'noopener noreferrer',
          'aria-label': 'Get Digital Mala for Android on Google Play (opens in a new tab)',
        },
        [
          Component.text('Get the app'),
          span(attributes: {'aria-hidden': 'true'}, [Component.text('↗')]),
        ],
      ),
    ],
  );
}
