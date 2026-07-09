import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class WhyUs extends StatelessComponent {
  const WhyUs({super.key});

  static const List<_WhyPoint> points = [
    _WhyPoint(
      iconSvg: '<svg viewBox="0 0 24 24" width="24" height="24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="9"></circle><path d="M12 3a9 9 0 0 1 9 9M9 12a3 3 0 1 1 6 0 3 3 0 0 1-6 0z"></path></svg>',
      title: 'Honors Your Sadhana',
      desc: 'Simulates physical prayer beads with lifelike haptic vibrations. Designed to complement traditional rituals, never replace them.',
    ),
    _WhyPoint(
      iconSvg: '<svg viewBox="0 0 24 24" width="24" height="24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>',
      title: 'Chant Anywhere, Discreetly',
      desc: 'Perfect for transit, offices, flights, or public spaces. Maintain your chanting discipline silently and portably wherever life takes you.',
    ),
    _WhyPoint(
      iconSvg: '<svg viewBox="0 0 24 24" width="24" height="24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>',
      title: 'Tracks Your Progress',
      desc: 'Daily streaks, mantra counts, weekly heatmaps, and PDF reports — visualize your consistency and deepen your practice over time.',
    ),
    _WhyPoint(
      iconSvg: '<svg viewBox="0 0 24 24" width="24" height="24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>',
      title: '100% Private Sanctuary',
      desc: 'Your practice is yours alone. No accounts, no cloud sync, zero trackers, no ads. All data stays on your device — forever.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'why-us',
      classes: 'section-padding section-alt-bg reveal',
      [
        div(classes: 'container', [
          div(classes: 'section-title-wrap', [
            h2([raw('A Mindful Companion<br/>For Your <span>Sadhana</span>')]),
            p([text('Traditional Japa malas are sacred. Digital Mala acts as a respectful, portable companion for times when physical beads are inconvenient — during travel, work hours, or for tracking long-term consistency.')]),
          ]),
          div(classes: 'why-us-grid', [
            for (int i = 0; i < points.length; i++)
              _WhyCard(point: points[i], index: i),
          ]),
        ]),
      ],
    );
  }
}

class _WhyPoint {
  final String iconSvg;
  final String title;
  final String desc;
  const _WhyPoint({required this.iconSvg, required this.title, required this.desc});
}

class _WhyCard extends StatelessComponent {
  final _WhyPoint point;
  final int index;

  const _WhyCard({required this.point, required this.index});

  @override
  Component build(BuildContext context) {
    return div(classes: 'why-card why-card-${index + 1}', [
      div(classes: 'why-card-icon', [
        raw(point.iconSvg),
      ]),
      div(classes: 'why-card-content', [
        h3(classes: 'why-card-title', [text(point.title)]),
        p(classes: 'why-card-desc', [text(point.desc)]),
      ]),
      div(classes: 'why-card-accent', []),
    ]);
  }
}