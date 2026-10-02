import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ValueStrip extends StatelessComponent {
  const ValueStrip({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'value-strip', [
    ul(classes: 'container value-list', [
      for (final label in ['Private practice', 'Works offline', 'No ads', 'No account', 'Mindful by design'])
        li([
          RawText(
            '<svg aria-hidden="true" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><circle cx="12" cy="12" r="9"/><path d="m8 12 3 3 5-6"/></svg>',
          ),
          Component.text(label),
        ]),
    ]),
  ]);
}
