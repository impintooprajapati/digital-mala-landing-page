import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/downloads.dart';

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
            'Windows and Linux are ready. Choose your download below. The macOS edition is still in development.',
          ),
        ]),
      ]),
      span(classes: 'desktop-release-badge', [Component.text('v$desktopVersion')]),
    ]),
    div(classes: 'desktop-platforms', [
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
          span(classes: 'package-meta', [Component.text('Windows desktop app')]),
          details(classes: 'package-options', [
            summary([
              Component.text('Standalone downloads'),
              span(attributes: {'aria-hidden': 'true'}, [Component.text('+')]),
            ]),
            div(classes: 'package-options-content', [
              _externalLink(windowsZipUrl, 'Windows x64 ZIP · 51.9 MB', 'package-link'),
              p([
                Component.text(
                  'Extract the ZIP and open the app from the extracted folder. Keep the accompanying files together.',
                ),
              ]),
              _externalLink(windowsMsixUrl, 'Windows MSIX · 28.8 MB', 'package-link'),
              p([
                Component.text(
                  'For manual installation. Package signing and Windows requirements may apply; Microsoft Store is the simpler option.',
                ),
              ]),
            ]),
          ]),
        ],
      ),
      article(
        classes: 'desktop-download-card linux-card',
        attributes: {'data-platform': 'linux'},
        [
          _PlatformHeading(
            name: 'Linux',
            icon: '<rect x="3" y="4" width="18" height="16" rx="3"/><path d="m7 9 3 3-3 3M13 15h4"/>',
          ),
          span(classes: 'platform-recommendation', [Component.text('Recommended for your device')]),
          p([Component.text('Download the x64 desktop bundle directly from GitHub.')]),
          _externalLink(linuxArchiveUrl, 'Download for Linux', 'platform-download-button'),
          span(classes: 'package-meta', [Component.text('x64 · .tar.gz · v$desktopVersion · 20.8 MB')]),
          details(classes: 'package-options', [
            summary([
              Component.text('How to run'),
              span(attributes: {'aria-hidden': 'true'}, [Component.text('+')]),
            ]),
            div(classes: 'package-options-content', [
              p([
                Component.text(
                  'Extract the archive, open the bundle folder, and launch digital_mala_app. Keep the lib and data folders alongside the executable. System library requirements vary by distribution.',
                ),
              ]),
            ]),
          ]),
        ],
      ),
      article(classes: 'desktop-download-card macos-card', [
        _PlatformHeading(
          name: 'macOS',
          icon: '<rect x="4" y="4" width="16" height="12" rx="2"/><path d="m4 16-2 4h20l-2-4M9 20h6"/>',
          comingSoon: true,
        ),
        span(classes: 'platform-recommendation', attributes: {'aria-hidden': 'true'}, []),
        p([Component.text('I’m preparing the macOS edition. A little more space for your practice is on the way.')]),
        div(classes: 'macos-status', [
          span(classes: 'development-dot', attributes: {'aria-hidden': 'true'}, []),
          Component.text('In development'),
        ]),
        span(classes: 'package-meta', [Component.text('No release date announced yet')]),
      ]),
    ]),
    const DesktopShowcase(),
  ]);
}

class _PlatformHeading extends StatelessComponent {
  final String name, icon;
  final bool comingSoon;
  const _PlatformHeading({required this.name, required this.icon, this.comingSoon = false});
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
    span(classes: comingSoon ? 'coming-soon-label' : 'available-label', [
      Component.text(comingSoon ? 'Coming soon' : 'Available now'),
    ]),
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

class DesktopShowcase extends StatefulComponent {
  const DesktopShowcase({super.key});
  @override
  State<DesktopShowcase> createState() => _DesktopShowcaseState();
}

class _DesktopShowcaseState extends State<DesktopShowcase> {
  int selected = 0;
  static const screens = [
    (
      'Counter',
      '/images/desktop/counter.png',
      'The Windows chanting counter with virtual mala beads, round progress and a spacebar shortcut.',
    ),
    (
      'Personal setup',
      '/images/desktop/setup.png',
      'Personalize your desktop practice with your name, spiritual path and daily mantra.',
    ),
    (
      'Languages',
      '/images/desktop/languages.png',
      'Choose a language for your practice in the Digital Mala Windows app.',
    ),
  ];
  @override
  Component build(BuildContext context) => div(classes: 'desktop-showcase', [
    div(classes: 'desktop-preview-heading', [
      h4([Component.text('A familiar ritual. A bigger canvas.')]),
      span([Component.text('A look inside the Windows app')]),
    ]),
    div(
      classes: 'desktop-showcase-tabs',
      attributes: {'aria-label': 'Desktop app previews'},
      [
        for (final screen in screens.indexed)
          button(
            classes: selected == screen.$1 ? 'selected' : '',
            attributes: {'aria-pressed': (selected == screen.$1).toString()},
            onClick: () => setState(() => selected = screen.$1),
            [Component.text(screen.$2.$1)],
          ),
      ],
    ),
    figure([
      img(
        src: screens[selected].$2,
        alt: screens[selected].$3,
        loading: MediaLoading.lazy,
        attributes: {'width': '1920', 'height': '1080', 'decoding': 'async'},
      ),
      figcaption(attributes: {'aria-live': 'polite', 'aria-atomic': 'true'}, [Component.text(screens[selected].$3)]),
    ]),
  ]);
}
