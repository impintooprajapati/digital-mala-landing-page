import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'section_header.dart';

class WhatsNewItem {
  final String icon;
  final String title;
  final String desc;
  final String tag;
  const WhatsNewItem({
    required this.icon,
    required this.title,
    required this.desc,
    required this.tag,
  });
}

class WhatsNew extends StatelessComponent {
  const WhatsNew({super.key});

  static const List<WhatsNewItem> items = [
    WhatsNewItem(
      icon: '🖥️',
      title: 'Native Desktop Releases (macOS, Windows & Linux)',
      desc:
          'Experience tranquil chanting at your desk. Features native macOS .dmg installer, Windows Microsoft Store MSIX & portable ZIP, and Linux Flatpak with keyboard-friendly counting (Spacebar / Click).',
      tag: 'Desktop Milestone',
    ),
    WhatsNewItem(
      icon: '🎨',
      title: 'Redesigned World-Class UI/UX',
      desc:
          'Crafted with serene tranquility, luminous sacred amber-gold accents, high-contrast stone typography, floating segmented controls, and elegant squircle icon badges.',
      tag: 'Redesigned UI/UX',
    ),
    WhatsNewItem(
      icon: '📱',
      title: 'Adaptive Responsive Layouts',
      desc:
          'Whether in Mobile Portrait, Mobile Landscape, Tablet, or Ultra-wide Desktop monitor, enjoy fluid 2-column dashboards, adaptive navigation rails, and perfectly centered beads.',
      tag: 'Fluid Multi-Device',
    ),
    WhatsNewItem(
      icon: '🧘',
      title: 'Sankalp & Daily Spiritual Vows',
      desc:
          'Set personal spiritual intentions, commit to daily bead goals, and track your vow completions with mindful milestone progress.',
      tag: 'Sacred Intentions',
    ),
    WhatsNewItem(
      icon: '🌬️',
      title: 'Pranayama & Ambient Breathwork',
      desc:
          'Find peace before your Jaap with synchronized breathing guides and calming ambient soundscapes.',
      tag: 'Mindful Breathing',
    ),
    WhatsNewItem(
      icon: '📊',
      title: 'Activity Heatmap & Sadhana Insights',
      desc:
          'Visualize your spiritual consistency with Apple Health / GitHub-style sadhana heatmaps, streaks, and comprehensive chanting statistics.',
      tag: 'Visual Dedication',
    ),
    WhatsNewItem(
      icon: '🔒',
      title: '100% Offline-First & Private',
      desc:
          'No logins, no ads, no cloud telemetry. Your sadhana stays completely yours.',
      tag: 'Zero Cloud Tracking',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'whats-new',
      classes: 'section-padding whats-new-section',
      styles: const Styles(position: Position.relative()),
      [
        div(classes: 'container', [
          const SectionHeader(
            eyebrow: 'Major Release 2.0.0',
            title: "🌟 What's New in Version 2.0.0",
            description:
                'Reimagined from the ground up for macOS, Windows, Linux, and Mobile with serene tranquility, intuitive breathwork, and sacred vow tracking.',
          ),
          div(classes: 'whats-new-grid', [
            for (int i = 0; i < items.length; i++)
              article(
                classes: 'whats-new-card card-$i${i == 0 || i == 1 ? ' card-featured' : ''}',
                [
                  div(classes: 'card-header-row', [
                    div(classes: 'squircle-icon', [
                      Component.text(items[i].icon),
                    ]),
                    span(classes: 'whats-new-pill', [Component.text(items[i].tag)]),
                  ]),
                  h3(classes: 'whats-new-card-title', [Component.text(items[i].title)]),
                  p(classes: 'whats-new-card-desc', [Component.text(items[i].desc)]),
                  if (i == 0)
                    div(classes: 'desktop-badges-preview', [
                      span([Component.text('🍏 macOS DMG')]),
                      span([Component.text('🪟 Windows MSIX / Zip')]),
                      span([Component.text('🐧 Linux Flatpak')]),
                      span([Component.text('⌨️ Spacebar Count')]),
                    ]),
                  if (i == 1)
                    div(classes: 'aesthetic-palette-row', [
                      span(classes: 'aesthetic-chip gold', [Component.text('Luminous Amber-Gold')]),
                      span(classes: 'aesthetic-chip stone', [Component.text('Stone Typography')]),
                      span(classes: 'aesthetic-chip segmented', [Component.text('Segmented Controls')]),
                    ]),
                  if (i == 5)
                    div(classes: 'heatmap-mini-badge', [
                      span(classes: 'spark-dot', attributes: {'aria-hidden': 'true'}, []),
                      Component.text('GitHub & Apple Health style sadhana streak insights'),
                    ]),
                ],
              ),
          ]),
        ]),
      ],
    );
  }
}

