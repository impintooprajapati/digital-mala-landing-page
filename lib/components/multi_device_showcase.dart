import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'phone_mockup.dart';
import 'desktop_mockup.dart';

class MultiDeviceShowcase extends StatelessComponent {
  const MultiDeviceShowcase({super.key});

  @override
  Component build(BuildContext context) => section(
    id: 'multi-platform',
    classes: 'section-padding multi-device-section reveal',
    [
      div(classes: 'container', [
        div(classes: 'section-header', [
          span(classes: 'editorial-eyebrow editorial-eyebrow-gold', [Component.text('Universal Harmony')]),
          h2([
            Component.text('One Practice. '),
            span(classes: 'editorial-gold', [Component.text('Every Device.')]),
          ]),
          p([
            Component.text(
              'Chant on the go with your smartphone, or settle into deep contemplation at your desk with Spacebar counting. Digital Mala adapts naturally across macOS, Windows, Linux, Android, and iOS.',
            ),
          ]),
        ]),

        div(classes: 'multi-device-stage', [
          div(classes: 'multi-device-glow', attributes: {'aria-hidden': 'true'}, []),

          // MacBook Laptop Chassis
          div(classes: 'laptop-composition-wrapper', [
            const DesktopMockup(
              image: '/images/desktop/counter.png',
              alt: 'Digital Mala desktop widescreen dashboard and spacebar counting on macOS and Windows',
            ),
          ]),

          // Overlapping Foreground Smartphone
          div(classes: 'mobile-overlap-wrapper', [
            const PhoneMockup(
              image: '/images/screenshots_raw/m4.png',
              alt: 'Digital Mala mobile app showing sacred jaap counter and bead progress',
            ),
          ]),
        ]),

        // Feature Highlights Bar Below Composition
        div(classes: 'multi-device-features-grid', [
          div(classes: 'multi-feature-pill', [
            span(classes: 'feature-icon', attributes: {'aria-hidden': 'true'}, [
              RawText(
                '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><rect x="2" y="3" width="20" height="14" rx="2"/><path d="M8 21h8M12 17v4"/></svg>',
              ),
            ]),
            div([
              strong([Component.text('Dual-Pane Desktop Layout')]),
              span([Component.text('Wide screen dashboards on macOS, Windows & Linux')]),
            ]),
          ]),

          div(classes: 'multi-feature-pill', [
            span(classes: 'feature-icon', attributes: {'aria-hidden': 'true'}, [
              RawText(
                '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><rect x="4" y="6" width="16" height="12" rx="2"/><line x1="8" y1="12" x2="16" y2="12"/></svg>',
              ),
            ]),
            div([
              strong([Component.text('Spacebar / Click Counting')]),
              span([Component.text('Minimalist desk chanting without touching a mouse')]),
            ]),
          ]),

          div(classes: 'multi-feature-pill', [
            span(classes: 'feature-icon', attributes: {'aria-hidden': 'true'}, [
              RawText(
                '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><rect x="5" y="2" width="14" height="20" rx="3"/><path d="M12 18h.01"/></svg>',
              ),
            ]),
            div([
              strong([Component.text('Ergonomic Touch Haptics')]),
              span([Component.text('Single-thumb mobile counting with subtle vibration pulses')]),
            ]),
          ]),
        ]),
      ]),
    ],
  );
}
