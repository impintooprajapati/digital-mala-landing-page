import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'phone_mockup.dart';
import 'play_store_button.dart';

class DownloadCta extends StatelessComponent {
  const DownloadCta({super.key});
  @override
  Component build(BuildContext context) => section(id: 'download', classes: 'section-padding download-section', [
    div(classes: 'container', [
      div(classes: 'cta-banner', [
        div(classes: 'cta-content', [
          span(classes: 'eyebrow', [Component.text('A little time for yourself')]),
          h2([
            Component.text('Begin Your Daily'),
            br(),
            span([Component.text('Mantra Practice')]),
          ]),
          p([
            Component.text(
              'A quieter mind can begin with a single repetition. Start your practice and build a meaningful daily ritual with Digital Mala.',
            ),
          ]),
          const PlayStoreButton(light: true),
          span(classes: 'cta-footnote', [Component.text('Free to use · No account required · Android')]),
        ]),
        div(classes: 'cta-visual', [
          const PhoneMockup(image: '/images/screenshots_raw/6.png', alt: 'Digital Mala mindful counting screen'),
        ]),
      ]),
    ]),
  ]);
}
