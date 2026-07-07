import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

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
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>',
      title: 'Privacy First',
      desc: 'Your practice is sacred. All Japa logs, counters, and personal mantras remain strictly on your local device—no accounts, no trackers, no cloud sync.',
    ),
    FeatureItem(
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M1 1l22 22M16.72 11.06A10.94 10.94 0 0 1 19 12.5M5 12.5a10.94 10.94 0 0 1 5.83-2.84M8.58 5.14a16.8 16.8 0 0 1 12.18 4.42M1.91 9.56a16.78 16.78 0 0 1 6.55-3.32M12 18.5a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path></svg>',
      title: 'Works Offline',
      desc: 'Chant anywhere. Connect deeply in quiet temples, flights, or remote retreats without digital interruptions or network signals.',
    ),
    FeatureItem(
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="5" r="2.5"></circle><circle cx="6" cy="9" r="2.5"></circle><circle cx="18" cy="9" r="2.5"></circle><circle cx="6" cy="15" r="2.5"></circle><circle cx="18" cy="15" r="2.5"></circle><circle cx="12" cy="19" r="2.5"></circle></svg>',
      title: 'Multiple Mala Styles',
      desc: 'Tactile bead simulations. Switch dynamically between realistic haptic simulations of traditional Rudraksha, Tulsi, Sphatik, or Sandalwood.',
    ),
    FeatureItem(
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M8.5 14.5A2.5 2.5 0 0 0 11 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5 2.5z"></path></svg>',
      title: 'Daily Streaks',
      desc: 'Cultivate devotion. Establish consistent chanting habits with daily streaks that celebrate your Sadhana milestones.',
    ),
    FeatureItem(
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"></path><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"></path></svg>',
      title: 'Mantra History',
      desc: 'Mindful Japa journals. Automatically logs timestamps, bead counts, and session duration for reflective progress reviews.',
    ),
    FeatureItem(
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="18" y1="20" x2="18" y2="10"></line><line x1="12" y1="20" x2="12" y2="4"></line><line x1="6" y1="20" x2="6" y2="14"></line></svg>',
      title: 'Detailed Insights',
      desc: 'Visualize your dedication. Track progress over time using our visual Japa heatmap and detailed progress charts.',
    ),
    FeatureItem(
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9M13.73 21a2 2 0 0 1-3.46 0"></path></svg>',
      title: 'Smart Reminders',
      desc: 'Gentle spiritual nudges. Configure custom notification alerts that invite you to pause, sit comfortably, and complete your rounds.',
    ),
    FeatureItem(
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg>',
      title: 'Completely Ad-Free',
      desc: 'Zero distractions. Created purely as a spiritual companion. Enjoy an interface with absolutely no banners, popups, or interruptions.',
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
          // Section Title
          div(classes: 'section-title-wrap', [
            h2([text('Designed for Sacred Focus')]),
            p([
              text('Modern features built on spiritual respect, giving you the best digital Japa Counter experience without compromising on privacy.')
            ]),
          ]),
          
          // Cards Grid
          div(classes: 'feature-grid', [
            for (var item in items)
              div(classes: 'feature-card animate-fade-in-up', [
                div(classes: 'feature-icon-wrap', [
                  raw(item.iconSvg),
                ]),
                h3([text(item.title)]),
                p([text(item.desc)]),
              ])
          ]),
        ]),
      ],
    );
  }
}
