import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Screenshots extends StatefulComponent {
  const Screenshots({super.key});

  @override
  State<Screenshots> createState() => _ScreenshotsState();
}

class _ScreenshotsState extends State<Screenshots> {
  int activeIndex = 0;
  static const int totalScreenshots = 9;

  static const List<String> captions = [
    'Sadhana Dashboard — View your active streaks, total counts, and weekly spiritual progress at a glance.',
    'Mindful Japa Counter — Simulated bead movement with immersive haptic vibrations and sound cues.',
    'Sadhana Heatmap — Visual activity charts that show your daily consistency over months.',
    'Mantra Manager — Add custom mantras, set target round limits, and track counts for each spiritual chant.',
    'Detailed Chanting History — Review local logs of all completed rounds, precise timestamps, and durations.',
    'Mala Style Picker — Select from sacred Rudraksha, traditional Tulsi, crystal Sphatik, or Sandalwood beads.',
    'Progress Reports — Export beautifully styled PDF logs and JSON backups to keep your data secure.',
    'Sound and Haptics — Customize tactile vibrations, bead click sounds, and background chanting audios.',
    'Smart Reminders — Set gentle, custom notifications to help integrate Japa chanting into your daily routine.',
  ];

  void nextSlide() {
    setState(() {
      activeIndex = (activeIndex + 1) % totalScreenshots;
    });
  }

  void prevSlide() {
    setState(() {
      activeIndex = (activeIndex - 1 + totalScreenshots) % totalScreenshots;
    });
  }

  @override
  Component build(BuildContext context) {
    return section(
      id: 'screenshots',
      classes: 'section-padding reveal',
      [
        div(classes: 'container', [
          // Section Title
          div(classes: 'section-title-wrap', [
            h2([text('Beautiful & Minimal Interface')]),
            p([
              text('Every screen is crafted for spiritual tranquility and focus, designed to align with your personal chanting ritual.')
            ]),
          ]),

          // Carousel Wrapper
          div(classes: 'carousel-outer', [
            // Track Window
            div(classes: 'carousel-container', [
              div(
                classes: 'carousel-track',
                attributes: {'style': '--carousel-index: $activeIndex; transform: translateX(calc(-1 * var(--carousel-index) * var(--slide-width, 33.333%)));'},
                [
                  for (int i = 0; i < totalScreenshots; i++)
                    div(
                      classes: 'carousel-slide${i == activeIndex ? ' active-slide' : ''}',
                      [
                        div(classes: 'carousel-phone-wrap', [
                          div(classes: 'carousel-phone', [
                            img(  
                              src: 'images/screenshots_raw/$i.png',
                              alt: 'App Screenshot $i',
                              loading: MediaLoading.lazy,
                            )
                          ]),
                          div(classes: 'slide-caption', [
                            text(captions[i]),
                          ]),
                        ])
                      ]
                    )
                ]
              )
            ]),

            // Left / Right Buttons
            button(
              classes: 'carousel-nav-btn carousel-prev',
              onClick: prevSlide,
              [text('‹')]
            ),
            button(
              classes: 'carousel-nav-btn carousel-next',
              onClick: nextSlide,
              [text('›')]
            ),

            // Indicator Dots
            div(classes: 'carousel-dots', [
              for (int i = 0; i < totalScreenshots; i++)
                button(
                  classes: 'carousel-dot${i == activeIndex ? ' active' : ''}',
                  onClick: () => setState(() => activeIndex = i),
                  []
                )
            ])
          ])
        ])
      ]
    );
  }
}
