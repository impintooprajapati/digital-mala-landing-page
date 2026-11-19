import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Editorial Story 1: "Less distraction. More devotion."
class EditorialStoryOne extends StatelessComponent {
  const EditorialStoryOne({super.key});

  @override
  Component build(BuildContext context) => section(
    classes: 'editorial-statement editorial-light',
    [
      div(classes: 'container', [
        div(classes: 'editorial-inner', [
          span(classes: 'editorial-eyebrow', [Component.text('The Philosophy of Stillness')]),
          h2(classes: 'editorial-headline', [
            Component.text('Less distraction.'),
            br(),
            span(classes: 'editorial-gold', [Component.text('More devotion.')]),
          ]),
          p(classes: 'editorial-lead', [
            Component.text(
              'In a world of infinite feeds, invasive algorithms, and fragmented attention, your sadhana deserves sacred stillness. Digital Mala strips away the noise so you can connect deeply with every single repetition.',
            ),
          ]),
          div(classes: 'editorial-stats-row', [
            div(classes: 'editorial-stat', [
              strong([Component.text('0')]),
              span([Component.text('Advertisements or banners')]),
            ]),
            div(classes: 'editorial-stat-divider', attributes: {'aria-hidden': 'true'}, []),
            div(classes: 'editorial-stat', [
              strong([Component.text('100%')]),
              span([Component.text('Offline local storage')]),
            ]),
            div(classes: 'editorial-stat-divider', attributes: {'aria-hidden': 'true'}, []),
            div(classes: 'editorial-stat', [
              strong([Component.text('Zero')]),
              span([Component.text('Cloud logins or tracking')]),
            ]),
          ]),
        ]),
      ]),
    ],
  );
}

/// Editorial Story 2: "Your practice deserves its own space."
class EditorialStoryTwo extends StatelessComponent {
  const EditorialStoryTwo({super.key});

  @override
  Component build(BuildContext context) => section(
    classes: 'editorial-statement editorial-dark',
    [
      div(classes: 'container', [
        div(classes: 'editorial-inner', [
          span(classes: 'editorial-eyebrow editorial-eyebrow-gold', [Component.text('Sacred Space')]),
          h2(classes: 'editorial-headline', [
            Component.text('Your practice deserves '),
            br(),
            span(classes: 'editorial-gold', [Component.text('its own space.')]),
          ]),
          p(classes: 'editorial-lead editorial-lead-light', [
            Component.text(
              'Whether seated in the tranquil silence of Brahma Muhurta, resting by your bedside in the evening, or taking a mindful five-minute pause at your desk, Digital Mala provides an intentional sanctuary designed solely for your spiritual rhythm.',
            ),
          ]),
          div(classes: 'editorial-pills-row', [
            span(classes: 'editorial-pill', [Component.text('🌅 Dawn Meditation')]),
            span(classes: 'editorial-pill', [Component.text('💻 Desk Chanting')]),
            span(classes: 'editorial-pill', [Component.text('🌙 Night Reflection')]),
            span(classes: 'editorial-pill', [Component.text('✈️ Travel Companion')]),
          ]),
        ]),
      ]),
    ],
  );
}

/// Editorial Story 3: "Built for consistency. Designed for peace."
class EditorialStoryThree extends StatelessComponent {
  const EditorialStoryThree({super.key});

  @override
  Component build(BuildContext context) => section(
    classes: 'editorial-statement editorial-ivory',
    [
      div(classes: 'container', [
        div(classes: 'editorial-inner', [
          span(classes: 'editorial-eyebrow', [Component.text('Sadhana & Discipline')]),
          h2(classes: 'editorial-headline', [
            Component.text('Built for consistency.'),
            br(),
            span(classes: 'editorial-gold', [Component.text('Designed for peace.')]),
          ]),
          p(classes: 'editorial-lead', [
            Component.text(
              'Spiritual transformation is not built in a single day — it is cultivated breath by breath, round by round. With mindful streak milestones, sacred Sankalp vows, and gentle optional reminders, staying true to your commitment feels effortless and joyful.',
            ),
          ]),
        ]),
      ]),
    ],
  );
}
