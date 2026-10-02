import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'section_header.dart';

class FeatureItem {
  final String iconSvg;
  final String title;
  final String desc;
  const FeatureItem({required this.iconSvg, required this.title, required this.desc});
}

class Features extends StatelessComponent {
  const Features({super.key});

  static const List<FeatureItem> items = [
    FeatureItem(
      iconSvg:
          '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>',
      title: 'Private by Design',
      desc: 'Your mantras, counts and practice logs stay on your device. No account, tracking or cloud sync.',
    ),
    FeatureItem(
      iconSvg:
          '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M1 1l22 22M16.72 11.06A10.94 10.94 0 0 1 19 12.5M5 12.5a10.94 10.94 0 0 1 5.83-2.84M8.58 5.14a16.8 16.8 0 0 1 12.18 4.42M1.91 9.56a16.78 16.78 0 0 1 6.55-3.32M12 18.5a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path></svg>',
      title: 'Works Offline',
      desc: 'A quiet moment is all you need. Practice wherever you are, with no internet connection.',
    ),
    FeatureItem(
      iconSvg:
          '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="5" r="2.5"></circle><circle cx="6" cy="9" r="2.5"></circle><circle cx="18" cy="9" r="2.5"></circle><circle cx="6" cy="15" r="2.5"></circle><circle cx="18" cy="15" r="2.5"></circle><circle cx="12" cy="19" r="2.5"></circle></svg>',
      title: 'Multiple Mala Styles',
      desc: 'Choose Rudraksha, Tulsi, Sphatik or Moti beads to make your mala feel familiar.',
    ),
    FeatureItem(
      iconSvg:
          '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M8.5 14.5A2.5 2.5 0 0 0 11 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5 2.5z"></path></svg>',
      title: 'Daily Streaks',
      desc: 'Return a little each day. Streaks and activity insights help you find your own rhythm.',
    ),
    FeatureItem(
      iconSvg:
          '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path></svg>',
      title: 'Mantra History',
      desc: 'Keep a thoughtful record of your rounds, counts and time spent in practice.',
    ),
    FeatureItem(
      iconSvg:
          '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>',
      title: 'Detailed Insights',
      desc: 'See your practice over time with simple charts and a Sadhana activity heatmap.',
    ),
    FeatureItem(
      iconSvg:
          '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9M13.73 21a2 2 0 0 1-3.46 0"></path></svg>',
      title: 'Smart Reminders',
      desc: 'Choose a gentle reminder for a time that works for you. Always optional.',
    ),
    FeatureItem(
      iconSvg:
          '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><circle cx="12" cy="12" r="6"></circle><circle cx="12" cy="12" r="2"></circle></svg>',
      title: 'Custom Daily Goals',
      desc: 'Choose 27, 54, 108 or a custom target. Your intention sets the pace.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'features',
      classes: 'section-padding section-alt-bg reveal',
      styles: const Styles(position: Position.relative()),
      [
        div(classes: 'container', [
          const SectionHeader(
            eyebrow: 'Made for your practice',
            title: "Everything You Need.\nNothing You Don't.",
            description:
                'Simple tools for a meaningful ritual. No ads, no distractions, just space to focus on what matters.',
          ),

          // Cards Grid
          div(classes: 'feature-grid', [
            for (final i in [0, 3, 1, 2, 5, 4, 6, 7]) FeatureCard(item: items[i], index: i),
          ]),
        ]),
      ],
    );
  }
}

class FeatureCard extends StatelessComponent {
  final FeatureItem item;
  final int index;
  const FeatureCard({required this.item, required this.index, super.key});
  @override
  Component build(BuildContext context) => article(classes: 'feature-card feature-$index', [
    div(classes: 'feature-copy', [
      div(classes: 'feature-icon-wrap', attributes: {'aria-hidden': 'true'}, [RawText(item.iconSvg)]),
      h3([Component.text(item.title)]),
      p([Component.text(item.desc)]),
    ]),
    if (index == 0)
      div(classes: 'privacy-note', [
        span(attributes: {'aria-hidden': 'true'}, [Component.text('✓')]),
        span([Component.text('On your device. In your control.')]),
      ]),
    if (index == 3 || index == 5)
      div(classes: 'feature-preview', [
        img(
          src: '/images/screenshots_raw/7.png',
          alt: 'Real Digital Mala activity heatmap and practice insights',
          loading: MediaLoading.lazy,
          attributes: {'width': '1080', 'height': '2424'},
        ),
      ]),
    if (index == 7)
      div(
        classes: 'goal-options',
        attributes: {'aria-label': 'Example chanting targets'},
        [
          for (final goal in ['27', '54', '108', 'Custom'])
            span(classes: goal == '108' ? 'selected' : '', [Component.text(goal)]),
        ],
      ),
  ]);
}
