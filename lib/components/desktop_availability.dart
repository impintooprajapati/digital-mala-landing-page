import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/downloads.dart';
import 'desktop_mockup.dart';

class DesktopAvailability extends StatelessComponent {
  const DesktopAvailability({super.key});

  @override
  Component build(BuildContext context) => div(id: 'desktop', classes: 'desktop-availability', [
    div(classes: 'desktop-hub-heading', [
      div([
        span(classes: 'eyebrow', [Component.text('Digital Mala for desktop')]),
        h3([Component.text('Choose your quiet space.')]),
        p([
          Component.text(
            'macOS, Windows, and Linux are ready. Version 2.0.0 brings tranquil, offline-first counting to your desk with keyboard shortcuts, wide dashboard layouts, and zero cloud tracking.',
          ),
        ]),
      ]),
      span(classes: 'desktop-release-badge', [Component.text('v$desktopVersion')]),
    ]),
    div(classes: 'desktop-platforms', [
      // macOS Card
      article(
        classes: 'desktop-download-card macos-card',
        attributes: {'data-platform': 'macos'},
        [
          _PlatformHeading(
            name: 'macOS',
            icon: '<path d="M12 20.94c1.5 0 2.75 1.06 4 1.06 3 0 6-8 6-12.22A4.91 4.91 0 0 0 17 5c-2.22 0-4 1.44-5 2-1-.56-2.78-2-5-2a4.9 4.9 0 0 0-5 4.78C2 14 5 22 8 22c1.25 0 2.5-1.06 4-1.06Z"/><path d="M10 2c1 .5 2 2 2 5"/>',
          ),
          span(classes: 'platform-recommendation', [Component.text('Recommended for your device')]),
          div(classes: 'macos-status-pill', [
            span(classes: 'status-pill-dot', attributes: {'aria-hidden': 'true'}, []),
            Component.text('Independent Developer Build (Unsigned DMG)'),
          ]),
          p([
            Component.text(
              'Universal DMG for Apple Silicon (M1/M2/M3/M4) and Intel Macs. 100% free, offline, and private with spacebar counting.',
            ),
          ]),
          _externalLink(macosDmgUrl, 'Download macOS DMG', 'platform-download-button'),
          span(classes: 'package-meta', [Component.text('Universal .dmg · v$desktopVersion · macOS 11+ · Unsigned Release')]),
          details(classes: 'package-options macos-guide-details', [
            summary([
              Component.text('First-time opening guide (Gatekeeper)'),
              span(attributes: {'aria-hidden': 'true'}, [Component.text('+')]),
            ]),
            div(classes: 'package-options-content macos-gatekeeper-content', [
              p(classes: 'gatekeeper-explain', [
                Component.text(
                  'Because Digital Mala is a non-commercial, privacy-first community app released without Apple\'s \$99/yr corporate certificate, macOS Gatekeeper may show an "Unidentified Developer" dialog on first run. Follow these simple steps:',
                ),
              ]),
              div(classes: 'guide-steps-list', [
                div(classes: 'guide-step', [
                  span(classes: 'step-num', [Component.text('1')]),
                  div([
                    strong([Component.text('Drag into Applications: ')]),
                    Component.text('Open the downloaded .dmg and drag Digital Mala into your Applications folder.'),
                  ]),
                ]),
                div(classes: 'guide-step', [
                  span(classes: 'step-num', [Component.text('2')]),
                  div([
                    strong([Component.text('Right-Click to Open (Fastest): ')]),
                    Component.text('In Finder > Applications, '),
                    strong([Component.text('Right-click (or Control-click)')]),
                    Component.text(' Digital Mala and select '),
                    strong([Component.text('Open')]),
                    Component.text(', then click '),
                    strong([Component.text('Open')]),
                    Component.text(' in the security pop-up.'),
                  ]),
                ]),
                div(classes: 'guide-step', [
                  span(classes: 'step-num', [Component.text('3')]),
                  div([
                    strong([Component.text('Or via System Settings: ')]),
                    Component.text('Open '),
                    strong([Component.text('System Settings → Privacy & Security')]),
                    Component.text(', scroll down to the Security section, and click '),
                    strong([Component.text('"Open Anyway"')]),
                    Component.text('.'),
                  ]),
                ]),
              ]),
              div(classes: 'terminal-fix-box', [
                span(classes: 'terminal-fix-label', [
                  Component.text('If macOS reports "App is damaged and cannot be opened":'),
                ]),
                code(classes: 'terminal-code', [Component.text('xattr -cr /Applications/Digital\\ Mala.app')]),
                span(classes: 'terminal-fix-sub', [
                  Component.text('Run this once in Terminal to clear Apple Gatekeeper quarantine.'),
                ]),
              ]),
            ]),
          ]),
        ],
      ),

      // Windows Card
      article(
        classes: 'desktop-download-card windows-card',
        attributes: {'data-platform': 'windows'},
        [
          _PlatformHeading(
            name: 'Windows',
            icon: '<path d="M3 5.5 10.5 4.5v7H3zm10-1.4L21 3v8.5h-8zM3 13.5h7.5v7L3 19.5zm10 0h8V22l-8-1.1z"/>',
          ),
          span(classes: 'platform-recommendation', [Component.text('Recommended for your device')]),
          p([Component.text('Start with Microsoft Store. Prefer a standalone package? Find it below.')]),
          _externalLink(microsoftStoreUrl, 'Get from Microsoft Store', 'platform-download-button'),
          span(classes: 'package-meta', [Component.text('Windows desktop app · v$desktopVersion')]),
          details(classes: 'package-options', [
            summary([
              Component.text('Standalone downloads'),
              span(attributes: {'aria-hidden': 'true'}, [Component.text('+')]),
            ]),
            div(classes: 'package-options-content', [
              _externalLink(windowsZipUrl, 'Windows x64 ZIP · v$desktopVersion', 'package-link'),
              p([
                Component.text(
                  'Extract the ZIP and open the app from the extracted folder. Keep the accompanying files together.',
                ),
              ]),
              _externalLink(windowsMsixUrl, 'Windows MSIX · v$desktopVersion', 'package-link'),
              p([
                Component.text(
                  'For manual installation. Package signing and Windows requirements may apply; Microsoft Store is the simpler option.',
                ),
              ]),
            ]),
          ]),
        ],
      ),

      // Linux Card
      article(
        classes: 'desktop-download-card linux-card',
        attributes: {'data-platform': 'linux'},
        [
          _PlatformHeading(
            name: 'Linux',
            icon: '<rect x="3" y="4" width="18" height="16" rx="3"/><path d="m7 9 3 3-3 3M13 15h4"/>',
          ),
          span(classes: 'platform-recommendation', [Component.text('Recommended for your device')]),
          p([Component.text('Install via Linux Flatpak or download the portable x64 desktop bundle.')]),
          _externalLink(linuxFlatpakUrl, 'Download Linux Flatpak', 'platform-download-button'),
          span(classes: 'package-meta', [Component.text('Flatpak / x64 tar.gz · v$desktopVersion')]),
          details(classes: 'package-options', [
            summary([
              Component.text('Alternative download & run'),
              span(attributes: {'aria-hidden': 'true'}, [Component.text('+')]),
            ]),
            div(classes: 'package-options-content', [
              _externalLink(linuxArchiveUrl, 'Download Linux x64 tar.gz', 'package-link'),
              p([
                Component.text(
                  'Extract the archive, open the bundle folder, and launch digital_mala_app. Works across major Linux distributions.',
                ),
              ]),
            ]),
          ]),
        ],
      ),
    ]),
    const DesktopShowcase(),
  ]);
}

class _PlatformHeading extends StatelessComponent {
  final String name, icon;
  const _PlatformHeading({required this.name, required this.icon});
  @override
  Component build(BuildContext context) => div(classes: 'platform-heading', [
    span(
      classes: 'desktop-platform-icon',
      attributes: {'aria-hidden': 'true'},
      [
        RawText(
          '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.4" stroke-linecap="round" stroke-linejoin="round">$icon</svg>',
        ),
      ],
    ),
    h4([Component.text(name)]),
    span(classes: 'available-label', [Component.text('Available now')]),
  ]);
}

Component _externalLink(String url, String label, String classes) => a(
  href: url,
  target: Target.blank,
  classes: classes,
  attributes: {'rel': 'noopener noreferrer', 'aria-label': '$label (opens in a new tab)'},
  [
    Component.text(label),
    if (classes == 'platform-download-button')
      span(
        classes: 'download-action-icon',
        attributes: {'aria-hidden': 'true'},
        [Component.text(url == microsoftStoreUrl ? '↗' : '↓')],
      ),
  ],
);

class _ShowcaseScreen {
  final String title;
  final String icon;
  final String image;
  final String alt;
  final String pill;
  final String headline;
  final String description;
  final List<String> tags;

  const _ShowcaseScreen({
    required this.title,
    required this.icon,
    required this.image,
    required this.alt,
    required this.pill,
    required this.headline,
    required this.description,
    required this.tags,
  });
}

class DesktopShowcase extends StatefulComponent {
  const DesktopShowcase({super.key});
  @override
  State<DesktopShowcase> createState() => _DesktopShowcaseState();
}

class _DesktopShowcaseState extends State<DesktopShowcase> {
  int selected = 0;

  static const List<_ShowcaseScreen> screens = [
    _ShowcaseScreen(
      title: 'Mala Experience',
      icon: '📿',
      image: '/images/screenshots_raw/d4.png',
      alt: 'Digital Mala desktop jap counter with spacebar counting and round progress',
      pill: 'Screen 1 of 4 · Core Workspace',
      headline: 'Minimalist, Distraction-Free Counting with Spacebar Support',
      description:
          'Tranquil dual-pane layout designed for wide desktop monitors. Tap Spacebar to count beads effortlessly at your desk, with live mantra reflection, round progress, and mindful temple bells.',
      tags: ['⌨️ Spacebar Counting', '📿 108 Beads Ring', '🔥 Streak Tracking', '🔔 Sound Bell'],
    ),
    _ShowcaseScreen(
      title: 'Devotee Profile & Vows',
      icon: '👤',
      image: '/images/screenshots_raw/d3.png',
      alt: 'Digital Mala desktop devotee profile and spiritual vows setup',
      pill: 'Screen 2 of 4 · Devotee Setup',
      headline: 'Personalized Devotee Profile — Sacred Setup & Sankalp',
      description:
          'Configure your spiritual identity, vow commitments, chosen path, and daily mantra. 100% offline-first with zero accounts, cloud tracking, or telemetry.',
      tags: ['👤 Devotee Name (Pintoo)', '🌸 Spiritual Path', '✨ Daily Mantra', '🔒 100% Offline'],
    ),
    _ShowcaseScreen(
      title: 'Activity Heatmap',
      icon: '📊',
      image: '/images/screenshots_raw/d5.png',
      alt: 'Digital Mala desktop activity heatmap and sadhana streak insights',
      pill: 'Screen 3 of 4 · Sadhana Insights',
      headline: 'Sadhana Insights & Heatmap — Year-Round Dedication',
      description:
          'Visualize your daily chanting habits with Apple Health & GitHub-style activity heatmaps. Monitor streaks, completed malas, total counts, and lifetime dedication milestones.',
      tags: ['📊 Year-Round Grid', '🟩 Dedication Heatmap', '🏆 Milestone Badges', '📈 Jaap Counts'],
    ),
    _ShowcaseScreen(
      title: 'Ambient Soundscapes',
      icon: '🎵',
      image: '/images/screenshots_raw/d7.png',
      alt: 'Digital Mala desktop ambient soundscapes with 432 Hz frequencies',
      pill: 'Screen 4 of 4 · Meditative Sound',
      headline: 'Window & Meditative Soundscapes — 432 Hz Healing Rhythms',
      description:
          'Calm your mind before and during your jaap with authentic OM Drone (136.1 Hz), Tibetan Singing Bowl (432 Hz), temple bells, and Himalayan stream ambient audio presets.',
      tags: ['🕉️ OM Drone (136.1 Hz)', '🥣 Tibetan Bowl (432 Hz)', '🔔 Temple Bells', '🌊 Himalayan Stream'],
    ),
  ];

  @override
  Component build(BuildContext context) {
    final screen = screens[selected];

    return div(classes: 'desktop-showcase', [
      div(classes: 'desktop-preview-heading', [
        h4([Component.text('A familiar ritual. A bigger canvas.')]),
        span([Component.text('A look inside the Desktop app · Native macOS, Windows & Linux')]),
      ]),
      div(
        classes: 'desktop-showcase-tabs',
        attributes: {'aria-label': 'Desktop app previews', 'role': 'tablist'},
        [
          for (final (index, item) in screens.indexed)
            button(
              classes: selected == index ? 'selected' : '',
              attributes: {
                'role': 'tab',
                'aria-selected': (selected == index).toString(),
              },
              onClick: () => setState(() => selected = index),
              [
                span(classes: 'tab-btn-icon', attributes: {'aria-hidden': 'true'}, [Component.text(item.icon)]),
                span(classes: 'tab-btn-title', [Component.text(item.title)]),
              ],
            ),
        ],
      ),
      div(classes: 'desktop-showcase-stage', [
        DesktopMockup(
          image: screen.image,
          alt: screen.alt,
        ),
      ]),
      div(classes: 'desktop-showcase-caption', attributes: {'aria-live': 'polite', 'aria-atomic': 'true'}, [
        span(classes: 'desktop-caption-pill', [
          Component.text(screen.pill),
        ]),
        h4(classes: 'desktop-caption-title', [Component.text(screen.headline)]),
        p(classes: 'desktop-caption-desc', [Component.text(screen.description)]),
        div(classes: 'desktop-caption-tags', [
          for (final tag in screen.tags)
            span(classes: 'desktop-caption-tag', [Component.text(tag)]),
        ]),
      ]),
    ]);
  }
}
