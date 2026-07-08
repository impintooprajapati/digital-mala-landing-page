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

  static const List<String> titles = [
    'Splash Screen',
    'Multilingual Support',
    'Quiet Onboarding',
    'Offline & Secure',
    'Streak Tracking',
    'Personalized Setup',
    'Mindful Japa Counter',
    'Sadhana Heatmap',
    'Settings & Tuning',
  ];

  static const List<String> descriptions = [
    'Our serene, minimal launch screen designed to invite focus and spiritual tranquility from the first touch.',
    'Supporting multiple regional languages (Hindi, Gujarati, Marathi, Spanish, etc.) for a native chanting experience.',
    'Step-by-step introduction focused on distraction-free Naam Jaap practice without complex setups.',
    'Your chanting data is stored 100% offline. No backend cloud databases, and zero external tracking.',
    'Visually track your daily consistency, active streaking, and progress logs as you form your spiritual habit.',
    'Personalize target chanting limits, choose bead sounds, and configure haptic vibration intensities.',
    'A realistic Japa Counter with smooth bead animations, immersive haptics, and a clean progress ring.',
    'Visual insights and activity charts that show your daily consistency and chanting rounds over months.',
    'Fine-tune your experience with bead style selection, smart reminders, and easy data backup tools.',
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'screenshots',
      classes: 'section-padding',
      [
        div(classes: 'container', [
          // Section Title
          div(classes: 'section-title-wrap', [
            h2([text('Beautiful & Minimal Interface')]),
            p([
              text('Every screen is crafted for spiritual tranquility and focus, designed to align with your personal chanting ritual.')
            ]),
          ]),

          // Storytelling Grid
          div(classes: 'storytelling-grid', [
            // Left Column: Sticky mockup container
            div(classes: 'storytelling-mockup-pane', [
              div(classes: 'phone-mockup-sticky', [
                div(classes: 'phone-mockup', [
                  div(classes: 'phone-screen', [
                    for (int i = 0; i < totalScreenshots; i++)
                      img(
                        classes: 'phone-screen-stack-img${i == 0 ? ' active' : ''}',
                        src: 'images/screenshots_raw/$i.png',
                        alt: 'App Screenshot $i',
                        loading: i == 0 ? MediaLoading.eager : MediaLoading.lazy,
                        attributes: {'data-index': '$i'},
                      )
                  ])
                ]),
                // Floating indicator dots inside the mockup pane
                div(classes: 'storytelling-dots', [
                  for (int i = 0; i < totalScreenshots; i++)
                    div(
                      classes: 'storytelling-dot${i == 0 ? ' active' : ''}',
                      attributes: {'data-index': '$i'},
                      []
                    )
                ])
              ])
            ]),

            // Right Column: Vertical scrolling content steps
            div(classes: 'storytelling-content', [
              for (int i = 0; i < totalScreenshots; i++)
                div(
                  classes: 'storytelling-step${i == 0 ? ' active' : ''}',
                  attributes: {'data-step-index': '$i'},
                  [
                    div(classes: 'storytelling-step-card', [
                      span(classes: 'storytelling-step-num', [text('0${i + 1}')]),
                      h3(classes: 'storytelling-step-title', [text(titles[i])]),
                      p(classes: 'storytelling-step-desc', [text(descriptions[i])])
                    ])
                  ]
                )
            ]),
          ]),

          // Scroll-triggered Intersection Observer script
          script(content: '''
            (() => {
              function setupStoryObserver() {
                const steps = document.querySelectorAll(".storytelling-step");
                const images = document.querySelectorAll(".phone-screen-stack-img");
                const dots = document.querySelectorAll(".storytelling-dot");

                if (!steps.length || !images.length) return;

                // Ensure first image is already active on load
                images.forEach((img, idx) => {
                  if (idx === 0) {
                    img.classList.add("active");
                  } else {
                    img.classList.remove("active");
                  }
                });

                const observerOptions = {
                  root: null,
                  rootMargin: "-35% 0px -35% 0px",
                  threshold: 0
                };

                const observer = new IntersectionObserver((entries) => {
                  entries.forEach((entry) => {
                    if (!entry.isIntersecting) return;
                    const idx = entry.target.getAttribute("data-step-index");

                    images.forEach((img) => {
                      img.classList.toggle("active", img.getAttribute("data-index") === idx);
                    });
                    dots.forEach((dot) => {
                      dot.classList.toggle("active", dot.getAttribute("data-index") === idx);
                    });
                    steps.forEach((step) => {
                      step.classList.toggle("active", step.getAttribute("data-step-index") === idx);
                    });
                  });
                }, observerOptions);

                steps.forEach((step) => observer.observe(step));
              }

              if (document.readyState === "loading") {
                document.addEventListener("DOMContentLoaded", setupStoryObserver);
              } else {
                setupStoryObserver();
              }
            })();
          ''')
        ])
      ]
    );
  }
}
