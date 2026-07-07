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
      title: 'Respecting Traditional Sadhana',
      desc: 'Simulates physical prayer beads with lifelike haptic vibrations. Designed to complement and honor your traditional rituals, not replace them.',
    ),
    ComparisonPoint(
      title: 'Discreet Chanting on the Go',
      desc: 'Perfect for transit, offices, flights, or public spaces. Maintain your chanting discipline silently and portably anywhere.',
    ),
    ComparisonPoint(
      title: 'Structured Devotion Logs',
      desc: 'Track daily streaks, mantra counts, and weekly heatmaps to help establish consistency in your daily spiritual practice.',
    ),
    ComparisonPoint(
      title: '100% Secure & Ad-Free Sanctuary',
      desc: 'Your spiritual practice is your own. No account signups, no cloud syncing, zero trackers, and absolutely no distracting ads.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'section-padding section-alt-bg reveal',
      [
        div(classes: 'container', [
          div(classes: 'comparison-wrap', [
            // Left Column: Core Value Proposition & Graphic
            div(classes: 'why-left-content', [
              h2(classes: 'why-title', [
                raw('A Mindful Companion <br/>For Your <span>Sadhana</span>')
              ]),
              p(classes: 'why-intro', [
                text('Traditional Japa malas are sacred. Digital Mala acts as a respectful, portable companion for times when physical beads are inconvenient—such as during travel, office hours, or for tracking long-term consistency.')
              ]),
              div(classes: 'why-image-wrapper', [
                img(
                  src: 'images/Feature_Graphic.png',
                  alt: 'Digital Mala app interface and graphics mockup',
                  classes: 'why-image',
                  loading: MediaLoading.lazy,
                )
              ]),
            ]),

            // Right Column: Premium Comparison Grid
            div(classes: 'comparison-box', [
              h3(classes: 'comparison-box-title', [text('Harmonizing Tradition with Convenience')]),
              div(classes: 'comparison-list', [
                for (var point in points)
                  div(classes: 'comparison-item', [
                    div(classes: 'comparison-marker-wrap', [
                      raw('''
                      <svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="#C99512" stroke-width="2.5">
                        <polyline points="20 6 9 17 4 12"></polyline>
                      </svg>
                      '''),
                    ]),
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


