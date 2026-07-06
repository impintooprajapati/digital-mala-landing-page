import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ComparisonPoint {
  final String title;
  final String desc;
  const ComparisonPoint({required this.title, required this.desc});
}

class WhyUs extends StatelessComponent {
  const WhyUs({super.key});

  static const List<ComparisonPoint> points = [
    ComparisonPoint(
      title: 'Respecting Traditional Practices',
      desc: 'Simulates physical prayer beads with haptic and audio triggers. Maintain mindfulness without counting manually.',
    ),
    ComparisonPoint(
      title: 'Perfect for Modern Travel',
      desc: 'No need to carry physical beads on trains, planes, or offices. Keep your chanting discreet and portable anywhere.',
    ),
    ComparisonPoint(
      title: 'Personalized Practice Log',
      desc: 'Keep records of mantras, daily streaks, heatmaps, and stats. Understand your chanting discipline with local graphs.',
    ),
    ComparisonPoint(
      title: 'Local Security & Privacy First',
      desc: 'Your spiritual counts are your own. No account sync, cloud servers, ads, or data collection. 100% offline.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'section-padding reveal',
      [
        div(classes: 'container', [
          div(classes: 'comparison-wrap', [
            // Left: Text Introduction
            div([
              h2(classes: 'why-title', [text('Why Use Digital Mala?')]),
              p(classes: 'why-intro', [
                text('Traditional meditation beads (Mala) are sacred and irreplaceable. Digital Mala is not designed to replace them, but to act as a convenient, respectful companion during your travels, office hours, and when you want to track your spiritual consistency.')
              ]),
              // Beautiful Golden Accent Image/Graphic
              div(classes: 'why-image-wrapper', [
                img(
                  src: 'images/Feature_Graphic.png',
                  alt: 'Digital Mala Graphic',
                  classes: 'why-image',
                  loading: MediaLoading.lazy,
                )
              ]),
            ]),

            // Right: Checklist Comparison Box
            div(classes: 'comparison-box', [
              div(classes: 'comparison-list', [
                for (var point in points)
                  div(classes: 'comparison-item', [
                    span(classes: 'comparison-check', [text('✨')]),
                    div([
                      h4([text(point.title)]),
                      p([text(point.desc)]),
                    ]),
                  ])
              ])
            ]),
          ]),
        ]),
      ],
    );
  }
}
