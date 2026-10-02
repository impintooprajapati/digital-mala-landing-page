import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SectionHeader extends StatelessComponent {
  final String eyebrow, title;
  final String? description;
  final bool alignedLeft;
  const SectionHeader({
    required this.eyebrow,
    required this.title,
    this.description,
    this.alignedLeft = false,
    super.key,
  });
  @override
  Component build(BuildContext context) => div(classes: 'section-header${alignedLeft ? ' align-left' : ''}', [
    span(classes: 'eyebrow', [Component.text(eyebrow)]),
    h2([
      for (var line in title.split('\n').indexed) ...[
        if (line.$1 > 0) br(),
        Component.text(line.$2),
      ],
    ]),
    if (description != null) p([Component.text(description!)]),
  ]);
}
