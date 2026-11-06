import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class DesktopMockup extends StatelessComponent {
  final String image;
  final String alt;

  const DesktopMockup({
    required this.image,
    required this.alt,
    super.key,
  });

  @override
  Component build(BuildContext context) => div(classes: 'desktop-window-frame', [
    div(classes: 'desktop-window-screen', [
      img(
        src: image,
        alt: alt,
        attributes: {'width': '2200', 'height': '1558', 'decoding': 'async'},
        loading: MediaLoading.lazy,
      ),
    ]),
  ]);
}

