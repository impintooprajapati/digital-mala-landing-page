import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ScreenshotItem {
  final String title;
  final String desc;
  final String image;
  const ScreenshotItem({required this.title, required this.desc, required this.image});
}

class Screenshots extends StatefulComponent {
  const Screenshots({super.key});

  @override
  State<Screenshots> createState() => _ScreenshotsState();
}

class _ScreenshotsState extends State<Screenshots> {
  int activeIndex = 0;

  static const List<ScreenshotItem> items = [
    ScreenshotItem(
      title: 'Splash Screen',
      desc: 'A serene launch screen that invites focus and spiritual tranquility from the first touch.',
      image: 'images/screenshots_raw/0.png',
    ),
    ScreenshotItem(
      title: 'Multilingual Support',
      desc: 'Hindi, Gujarati, Marathi, Spanish, and more — chant in the language closest to your heart.',
      image: 'images/screenshots_raw/1.png',
    ),
    ScreenshotItem(
      title: 'Quiet Onboarding',
      desc: 'A gentle step-by-step introduction focused on distraction-free Naam Jaap practice.',
      image: 'images/screenshots_raw/2.png',
    ),
    ScreenshotItem(
      title: 'Offline & Secure',
      desc: 'Your chanting data stays 100% on your device. No cloud, no accounts, no tracking.',
      image: 'images/screenshots_raw/3.png',
    ),
    ScreenshotItem(
      title: 'Streak Tracking',
      desc: 'Visualize daily consistency and build a lasting spiritual habit with streak milestones.',
      image: 'images/screenshots_raw/4.png',
    ),
    ScreenshotItem(
      title: 'Personalized Setup',
      desc: 'Set chanting limits, choose bead sounds, and tune haptic vibration to your preference.',
      image: 'images/screenshots_raw/5.png',
    ),
    ScreenshotItem(
      title: 'Mindful Japa Counter',
      desc: 'Realistic bead animations, immersive haptics, and a clean progress ring for every round.',
      image: 'images/screenshots_raw/6.png',
    ),
    ScreenshotItem(
      title: 'Sadhana Heatmap',
      desc: 'Activity charts and heatmaps that reveal your dedication over weeks and months.',
      image: 'images/screenshots_raw/7.png',
    ),
    ScreenshotItem(
      title: 'Settings & Tuning',
      desc: 'Pick bead styles, configure smart reminders, and back up your practice data locally.',
      image: 'images/screenshots_raw/8.png',
    ),
  ];

  void _goTo(int index) {
    setState(() => activeIndex = (index + items.length) % items.length);
  }

  @override
  Component build(BuildContext context) {
    final active = items[activeIndex];

    return section(
      id: 'screenshots',
      classes: 'section-padding reveal',
      [
        div(classes: 'container', [
          div(classes: 'section-title-wrap', [
            h2([text('Beautiful & Minimal Interface')]),
            p([
              text('Every screen is crafted for spiritual tranquility and focus — explore the app at your own pace.')
            ]),
          ]),

          div(classes: 'screenshots-showcase', [
            // Left: feature selector tabs
            div(classes: 'screenshots-tabs', [
              for (int i = 0; i < items.length; i++)
                button(
                  classes: 'screenshots-tab${i == activeIndex ? ' active' : ''}',
                  onClick: () => _goTo(i),
                  [
                    span(classes: 'screenshots-tab-num', [text('${i + 1}'.padLeft(2, '0'))]),
                    span(classes: 'screenshots-tab-label', [text(items[i].title)]),
                  ],
                ),
            ]),

            // Center: phone preview stage
            div(classes: 'screenshots-stage', [
              div(classes: 'screenshots-stage-glow', []),
              button(
                classes: 'screenshots-arrow screenshots-arrow-prev',
                attributes: {'aria-label': 'Previous screenshot'},
                onClick: () => _goTo(activeIndex - 1),
                [
                  raw('''
                  <svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                    <polyline points="15 18 9 12 15 6"></polyline>
                  </svg>
                  '''),
                ],
              ),
              div(classes: 'screenshots-frame', [
                div(classes: 'screenshots-screen', [
                  for (int i = 0; i < items.length; i++)
                    img(
                      classes: 'screenshots-img${i == activeIndex ? ' active' : ''}',
                      src: items[i].image,
                      alt: '${items[i].title} — Digital Mala app screenshot',
                      loading: i == 0 ? MediaLoading.eager : MediaLoading.lazy,
                    ),
                ]),
              ]),
              button(
                classes: 'screenshots-arrow screenshots-arrow-next',
                attributes: {'aria-label': 'Next screenshot'},
                onClick: () => _goTo(activeIndex + 1),
                [
                  raw('''
                  <svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                    <polyline points="9 18 15 12 9 6"></polyline>
                  </svg>
                  '''),
                ],
              ),
              div(classes: 'screenshots-dots', [
                for (int i = 0; i < items.length; i++)
                  button(
                    classes: 'screenshots-dot${i == activeIndex ? ' active' : ''}',
                    attributes: {'aria-label': 'Go to ${items[i].title}'},
                    onClick: () => _goTo(i),
                    [],
                  ),
              ]),
            ]),

            // Right: caption panel
            div(classes: 'screenshots-caption', [
              span(classes: 'screenshots-caption-num', [
                text('${(activeIndex + 1).toString().padLeft(2, '0')} / ${items.length.toString().padLeft(2, '0')}'),
              ]),
              h3(classes: 'screenshots-caption-title', [text(active.title)]),
              p(classes: 'screenshots-caption-desc', [text(active.desc)]),
              div(classes: 'screenshots-caption-hint', [
                raw('''
                <svg viewBox="0 0 24 24" width="14" height="14" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="flex-shrink:0">
                  <rect x="2" y="3" width="20" height="14" rx="2" ry="2"></rect>
                  <line x1="8" y1="21" x2="16" y2="21"></line>
                  <line x1="12" y1="17" x2="12" y2="21"></line>
                </svg>
                '''),
                span([text('Tap a feature on the left or use arrows to browse')]),
              ]),
            ]),
          ]),
        ]),
      ],
    );
  }
}
