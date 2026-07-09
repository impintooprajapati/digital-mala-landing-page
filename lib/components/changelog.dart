import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Changelog extends StatelessComponent {
  const Changelog({super.key});

  static const List<_VersionEntry> versions = [
    _VersionEntry(
      version: '1.1.4',
      date: '28 Jun 22:28',
      changes: [
        'New Feature: Bead Styles! Customize your digital mala with beautifully crafted styles including traditional Rudraksha, sacred Tulsi, translucent Sphatik (Crystal), and glossy Moti (Pearl).',
        'Fixed a startup crash on some devices caused by notification scheduling.',
      ],
    ),
    _VersionEntry(
      version: '1.1.3',
      date: '21 Jun 14:32',
      changes: [
        'New Languages Support: Added support for Bengali, Tamil, Telugu, Japanese, Spanish, Thai, and Vietnamese (12 languages total!).',
        'Enhanced PDF & Share: Improved multilingual PDF exports and count-sharing templates.',
        'UI Polish: Updated onboarding and settings screens for a smoother language selection experience.',
        'Performance: Minor bug fixes and optimizations.',
      ],
    ),
    _VersionEntry(
      version: '1.1.2',
      date: '13 Jun 09:09',
      changes: [
        'Marathi Language Support: We have fixed text rendering issues for Marathi name jap.',
        'Cleaner Insights: We removed the calendar to give you a clutter-free view of your Sadhana Activity Heatmap.',
        'Peace & Stability: General improvements for a smoother, distraction-free meditation journey.',
      ],
    ),
    _VersionEntry(
      version: '1.1.1',
      date: '8 Jun 23:56',
      changes: [
        'Minor UI polish and performance enhancements.',
      ],
    ),
    _VersionEntry(
      version: '1.1.0',
      date: '7 Jun 16:01',
      changes: [
        'Manage and switch between multiple mantras.',
        'Set custom daily jaap reminders/notifications.',
        'Export your spiritual insights to PDF.',
        'Minor UI polish and performance enhancements.',
      ],
    ),
    _VersionEntry(
      version: '1.0.0',
      date: '21 May 07:46',
      isInitial: true,
      changes: [
        'Private Mantra Counter: 100% offline with zero tracking or cloud sync.',
        'Customisable: Add your own mantras and choose peaceful colour themes.',
        'Progress Tracking: Stay motivated with daily streaks and local charts.',
        'Secure: No login required. Your data stays on your device.',
      ],
    ),
  ];

  @override
  Component build(BuildContext context) {
    return div(classes: 'changelog-timeline', [
      for (var entry in versions)
        div(classes: 'changelog-entry${entry.isInitial ? ' initial' : ''}', [
          div(classes: 'changelog-marker', [
            div(classes: 'changelog-dot', []),
          ]),
          div(classes: 'changelog-card', [
            div(classes: 'changelog-header', [
              div(classes: 'changelog-version-badge', [
                text('v${entry.version}'),
              ]),
              span(classes: 'changelog-date', [text(entry.date)]),
              if (entry.isInitial)
                span(classes: 'changelog-tag', [text('Initial Release')]),
            ]),
            ul(classes: 'changelog-list', [
              for (var change in entry.changes)
                li([text(change)]),
            ]),
          ]),
        ]),
    ]);
  }
}

class _VersionEntry {
  final String version;
  final String date;
  final List<String> changes;
  final bool isInitial;

  const _VersionEntry({
    required this.version,
    required this.date,
    required this.changes,
    this.isInitial = false,
  });
}
