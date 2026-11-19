import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ValueStrip extends StatelessComponent {
  const ValueStrip({super.key});

  static const _values = [
    ('100% Offline', 'Zero internet dependency'),
    ('Zero Ads', 'Completely distraction-free'),
    ('No Account', 'Instant anonymous practice'),
    ('4 Mala Styles', 'Rudraksha, Tulsi, Sphatik & Moti'),
    ('Multi-Platform', 'macOS, Windows, Linux, Android & iOS'),
  ];

  @override
  Component build(BuildContext context) => div(classes: 'value-strip', [
    div(classes: 'container', [
      ul(classes: 'value-list', [
        for (final item in _values)
          li(classes: 'value-item', [
            span(classes: 'value-dot', attributes: {'aria-hidden': 'true'}, []),
            div(classes: 'value-text', [
              strong([Component.text(item.$1)]),
              span([Component.text(item.$2)]),
            ]),
          ]),
      ]),
    ]),
  ]);
}
