import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FeatureItem {
  final String icon;
  final String title;
  final String desc;
  const FeatureItem({required this.icon, required this.title, required this.desc});
}

class Features extends StatelessComponent {
  const Features({super.key});

  static const List<FeatureItem> items = [
    FeatureItem(
      icon: '🔒',
      title: 'Privacy First',
      desc: 'All data is stored in a secure local database on your device. Zero account creation, zero tracking, and complete control.',
    ),
    FeatureItem(
      icon: '📴',
      title: 'Works Offline',
      desc: 'No internet connection needed. Perfect for quiet temples, flights, remote retreats, and focused chanting without signals.',
    ),
    FeatureItem(
      icon: '📿',
      title: 'Multiple Mala Styles',
      desc: 'Customize your virtual prayer beads. Switch between sacred Rudraksha, traditional Tulsi, crystal Sphatik, or Sandalwood.',
    ),
    FeatureItem(
      icon: '🔥',
      title: 'Daily Streaks',
      desc: 'Establish consistency in your Sadhana. Follow your streak progress and celebrate milestones in your chanting routine.',
    ),
    FeatureItem(
      icon: '📖',
      title: 'Mantra History',
      desc: 'Automatically records details of your meditation session. View timestamps, mantra text, bead counts, and completion times.',
    ),
    FeatureItem(
      icon: '📊',
      title: 'Detailed Insights',
      desc: 'Track spiritual habits using a GitHub-style Sadhana heatmap and detailed progress charts to analyze consistency.',
    ),
    FeatureItem(
      icon: '🔔',
      title: 'Smart Reminders',
      desc: 'Set custom reminders to keep your daily chanting schedule active. Receive gentle nudges to pause and breathe.',
    ),
    FeatureItem(
      icon: '🚫',
      title: 'Completely Ad-Free',
      desc: 'No interruptions. No banner ads or full-screen overlays to distract you from your sacred spiritual meditation.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'features',
      classes: 'section-padding reveal',
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
                  span([text(item.icon)]),
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
