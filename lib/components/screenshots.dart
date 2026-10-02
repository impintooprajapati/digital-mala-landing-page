import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'section_header.dart';
import 'phone_mockup.dart';

class ScreenshotItem {
  final String title, desc, image;
  const ScreenshotItem({required this.title, required this.desc, required this.image});
}

class Screenshots extends StatefulComponent {
  const Screenshots({super.key});
  @override
  State<Screenshots> createState() => _ScreenshotsState();
}

class _ScreenshotsState extends State<Screenshots> {
  int activeIndex = 6;
  static const List<ScreenshotItem> items = [
    ScreenshotItem(
      title: 'Splash Screen',
      desc: 'A serene launch screen that invites focus and spiritual tranquility from the first touch.',
      image: '/images/screenshots_raw/0.png',
    ),
    ScreenshotItem(
      title: 'Multilingual Support',
      desc: 'Hindi, Gujarati, Marathi, Spanish, and more — chant in the language closest to your heart.',
      image: '/images/screenshots_raw/1.png',
    ),
    ScreenshotItem(
      title: 'Quiet Onboarding',
      desc: 'A gentle step-by-step introduction focused on distraction-free Naam Jaap practice.',
      image: '/images/screenshots_raw/2.png',
    ),
    ScreenshotItem(
      title: 'Offline & Secure',
      desc: 'Your chanting data stays 100% on your device. No cloud, no accounts, no tracking.',
      image: '/images/screenshots_raw/3.png',
    ),
    ScreenshotItem(
      title: 'Streak Tracking',
      desc: 'Visualize daily consistency and build a lasting spiritual habit with streak milestones.',
      image: '/images/screenshots_raw/4.png',
    ),
    ScreenshotItem(
      title: 'Personalized Setup',
      desc: 'Set chanting limits, choose bead sounds, and tune haptic vibration to your preference.',
      image: '/images/screenshots_raw/5.png',
    ),
    ScreenshotItem(
      title: 'Mindful Japa Counter',
      desc: 'Realistic bead animations, immersive haptics, and a clean progress ring for every round.',
      image: '/images/screenshots_raw/6.png',
    ),
    ScreenshotItem(
      title: 'Sadhana Heatmap',
      desc: 'Activity charts and heatmaps that reveal your dedication over weeks and months.',
      image: '/images/screenshots_raw/7.png',
    ),
    ScreenshotItem(
      title: 'Settings & Tuning',
      desc: 'Pick bead styles, configure smart reminders, and back up your practice data locally.',
      image: '/images/screenshots_raw/8.png',
    ),
  ];

  void _goTo(int index) => setState(() => activeIndex = (index + items.length) % items.length);
  @override
  Component build(BuildContext context) {
    final active = items[activeIndex];
    return section(id: 'screenshots', classes: 'section-padding showcase-section', [
      div(classes: 'container', [
        const SectionHeader(
          eyebrow: 'Your daily practice',
          title: 'A Calmer Way to Count',
          description:
              'A familiar ritual, thoughtfully reimagined. Stay with your mantra; let Digital Mala hold the count.',
        ),
        div(classes: 'showcase-around', [
          div(classes: 'context-column', [
            const _ContextFeature(
              number: '01',
              title: 'Custom Mala',
              description: 'Choose a bead count and mala style that feel right for your practice.',
            ),
            const _ContextFeature(
              number: '02',
              title: 'Mindful Counting',
              description: 'A quiet interface keeps your attention on chanting, one repetition at a time.',
            ),
          ]),
          div(classes: 'screenshots-stage', [
            PhoneMockup(image: active.image, alt: '${active.title} — Digital Mala app screenshot'),
            div(classes: 'screenshot-controls', [
              button(
                classes: 'screenshot-arrow',
                attributes: {'aria-label': 'Previous screenshot'},
                onClick: () => _goTo(activeIndex - 1),
                [Component.text('‹')],
              ),
              span(classes: 'screenshot-counter', [Component.text('${activeIndex + 1} / ${items.length}')]),
              button(
                classes: 'screenshot-arrow',
                attributes: {'aria-label': 'Next screenshot'},
                onClick: () => _goTo(activeIndex + 1),
                [Component.text('›')],
              ),
            ]),
            div(
              classes: 'screenshot-caption',
              attributes: {'aria-live': 'polite', 'aria-atomic': 'true'},
              [
                h3([Component.text(active.title)]),
                p([Component.text(active.desc)]),
              ],
            ),
          ]),
          div(classes: 'context-column', [
            const _ContextFeature(
              number: '03',
              title: 'Gentle Feedback',
              description: 'Subtle haptics help you count without constantly looking at your screen.',
            ),
            const _ContextFeature(
              number: '04',
              title: 'Daily Progress',
              description: 'Build consistency at your own pace, without turning practice into competition.',
            ),
          ]),
        ]),
        details(classes: 'screen-picker', [
          summary([Component.text('Browse all app screens')]),
          div(classes: 'screenshots-tabs', [
            for (int i = 0; i < items.length; i++)
              button(
                classes: 'screenshots-tab${i == activeIndex ? ' active' : ''}',
                attributes: {'aria-pressed': (i == activeIndex).toString()},
                onClick: () => _goTo(i),
                [Component.text(items[i].title)],
              ),
          ]),
        ]),
      ]),
    ]);
  }
}

class _ContextFeature extends StatelessComponent {
  final String number, title, description;
  const _ContextFeature({required this.number, required this.title, required this.description});
  @override
  Component build(BuildContext context) => div(classes: 'context-feature', [
    span(classes: 'context-number', [Component.text(number)]),
    h3([Component.text(title)]),
    p([Component.text(description)]),
  ]);
}
