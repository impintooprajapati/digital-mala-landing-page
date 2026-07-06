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
                        div(classes: 'carousel-phone', [
                          img(  
                            src: 'images/screenshots_raw/$i.png',
                            alt: 'App Screenshot $i',
                            loading: MediaLoading.lazy,
                          )
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
