import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'phone_mockup.dart';
import 'play_store_button.dart';
import 'desktop_availability.dart';

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
              'A quieter mind can begin with a single repetition. Experience tranquil chanting across Mobile and Desktop with Digital Mala v2.0.0.',
            ),
          ]),
          const PlayStoreButton(light: true),
          a(href: '/#desktop', classes: 'cta-desktop-link', [
            Component.text('Looking for macOS, Windows, or Linux? ↓'),
          ]),
          span(classes: 'cta-footnote', [
            Component.text('Available now on macOS, Windows, Linux, Android & iOS · Free to use · 100% Offline'),
          ]),
        ]),
        div(classes: 'cta-visual', [
          const PhoneMockup(
            image: '/images/screenshots_raw/m4.png',
            alt: 'Digital Mala mindful counting screen with smooth touch beads',
          ),
        ]),
      ]),
      const DesktopAvailability(),
    ]),
  ]);
}
