import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

const playStoreUrl = 'https://play.google.com/store/apps/details?id=com.digitalmala.digital_mala_app';

class PlayStoreButton extends StatelessComponent {
  final bool light;
  const PlayStoreButton({this.light = false, super.key});
  @override
  Component build(BuildContext context) => a(
    href: playStoreUrl,
    target: Target.blank,
    classes: 'store-button${light ? ' light' : ''}',
    attributes: {'rel': 'noopener noreferrer', 'aria-label': 'Get Digital Mala on Google Play (opens in a new tab)'},
    [
      RawText(
        '<svg aria-hidden="true" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linejoin="round"><path d="M4 3v18l16-9L4 3zM4 3l10 12M4 21l10-12"/></svg>',
      ),
      span(classes: 'store-button-copy', [
        span([Component.text('Get it on')]),
        strong([Component.text('Google Play')]),
      ]),
    ],
  );
}
