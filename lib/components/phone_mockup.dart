import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class PhoneMockup extends StatelessComponent {
  final String image, alt, classes;
  final bool eager;
  const PhoneMockup({required this.image, required this.alt, this.eager = false, this.classes = '', super.key});
  @override
  Component build(BuildContext context) => div(classes: 'device $classes', [
    div(classes: 'device-screen', [
      img(
        src: image,
        alt: alt,
        attributes: {'width': '1080', 'height': '2424', 'decoding': 'async', if (eager) 'fetchpriority': 'high'},
        loading: eager ? MediaLoading.eager : MediaLoading.lazy,
      ),
    ]),
  ]);
}
