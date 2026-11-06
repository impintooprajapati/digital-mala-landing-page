import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'section_header.dart';
import 'phone_mockup.dart';
import 'desktop_mockup.dart';

class ScreenshotItem {
  final int id;
  final String category;
  final String icon;
  final String title;
  final String desc;
  final String image;
  const ScreenshotItem({
    required this.id,
    required this.category,
    required this.icon,
    required this.title,
    required this.desc,
    required this.image,
  });
}

class Screenshots extends StatefulComponent {
  const Screenshots({super.key});
  @override
  State<Screenshots> createState() => _ScreenshotsState();
}

class _ScreenshotsState extends State<Screenshots> {
  bool isDesktopMode = false;
  int mobileIndex = 0;
  int desktopIndex = 0;

  static const List<ScreenshotItem> mobileItems = [
    ScreenshotItem(
      id: 1,
      category: 'Jap Counter',
      icon: '📿',
      title: 'Sacred Jap Counter',
      desc: 'Smooth touch beads with real-time mantra counter and haptic feedback',
      image: '/images/screenshots_raw/m4.png',
    ),
    ScreenshotItem(
      id: 2,
      category: 'Devotee Profile',
      icon: '👤',
      title: 'Setup Your Mala & User Profile',
      desc: 'Personalized devotee profile with your name, spiritual path, and daily mantra',
      image: '/images/screenshots_raw/m3.png',
    ),
    ScreenshotItem(
      id: 3,
      category: 'Activity Heatmap',
      icon: '📊',
      title: 'Sadhana Insights & Heatmap',
      desc: 'Daily streaks, mala completions, and Apple Health-style activity heatmaps',
      image: '/images/screenshots_raw/m5.png',
    ),
    ScreenshotItem(
      id: 4,
      category: 'Breathwork',
      icon: '🌬️',
      title: 'Pranayama Breathwork',
      desc: 'Ground your mind before chanting with Box Breath, So-Hum, and 4-7-8 rhythms',
      image: '/images/screenshots_raw/m8.png',
    ),
    ScreenshotItem(
      id: 5,
      category: 'Soundscapes',
      icon: '🎵',
      title: 'Meditative Soundscapes',
      desc: 'OM Drone (136.1 Hz), Tibetan Singing Bowls (432 Hz), and sacred temple bells',
      image: '/images/screenshots_raw/m7.png',
    ),
    ScreenshotItem(
      id: 6,
      category: 'Profile & Settings',
      icon: '⚙️',
      title: 'Settings & Devotee Profile Card',
      desc: 'Apple ID-style devotee profile card, bead styles, haptics, and private data backup',
      image: '/images/screenshots_raw/m6.png',
    ),
    ScreenshotItem(
      id: 7,
      category: '12 Languages',
      icon: '🌐',
      title: 'Multilingual Chanting',
      desc: 'Native support for 12 sacred languages and regional Indian scripts',
      image: '/images/screenshots_raw/m2.png',
    ),
    ScreenshotItem(
      id: 8,
      category: 'Tranquil Launch',
      icon: '✨',
      title: 'Serene Offline Launch',
      desc: 'Distraction-free startup with 100% offline-first architecture and zero ads',
      image: '/images/screenshots_raw/m1.png',
    ),
  ];

  static const List<ScreenshotItem> desktopItems = [
    ScreenshotItem(
      id: 1,
      category: 'Mala Experience',
      icon: '📿',
      title: 'Desktop Mala Experience',
      desc: 'Minimalist, distraction-free counting with spacebar support & dual-pane layout',
      image: '/images/screenshots_raw/d4.png',
    ),
    ScreenshotItem(
      id: 2,
      category: 'Profile & Setup',
      icon: '👤',
      title: 'Desktop Profile & Spiritual Vows',
      desc: 'Apple ID-grade devotee setup for sacred intentions, vows, and offline ownership',
      image: '/images/screenshots_raw/d3.png',
    ),
    ScreenshotItem(
      id: 3,
      category: 'Activity Heatmap',
      icon: '📊',
      title: 'Activity Heatmap & Dedication',
      desc: 'Year-round visual view of your spiritual dedication, streak milestones, and history',
      image: '/images/screenshots_raw/d5.png',
    ),
    ScreenshotItem(
      id: 4,
      category: 'Mindful Breathing',
      icon: '🌬️',
      title: 'Mindful Breathing & Breathwork',
      desc: 'Expanded serene animations for deep breathwork sessions before your jaap',
      image: '/images/screenshots_raw/d8.png',
    ),
    ScreenshotItem(
      id: 5,
      category: 'Sound Controls',
      icon: '🎵',
      title: 'Window & Meditative Sound Controls',
      desc: 'Curated ambient audio presets, 432 Hz binaural drone, and volume controls',
      image: '/images/screenshots_raw/d7.png',
    ),
    ScreenshotItem(
      id: 6,
      category: 'Preferences',
      icon: '⚙️',
      title: 'Desktop Preferences & Profile',
      desc: 'Personalized themes, devotee path, soundscapes, and encrypted local backup',
      image: '/images/screenshots_raw/d6.png',
    ),
    ScreenshotItem(
      id: 7,
      category: 'Multilingual',
      icon: '🌐',
      title: 'Adaptive Multilingual Dashboard',
      desc: 'Seamlessly practice in Hindi, Sanskrit, English, Gujarati, and 9 more languages',
      image: '/images/screenshots_raw/d2.png',
    ),
    ScreenshotItem(
      id: 8,
      category: 'Desktop Launch',
      icon: '✨',
      title: 'Tranquil Desktop Launch',
      desc: 'Instant offline launch with no cloud logins, telemetry, tracking, or advertisements',
      image: '/images/screenshots_raw/d1.png',
    ),
  ];

  int get activeIndex => isDesktopMode ? desktopIndex : mobileIndex;
  List<ScreenshotItem> get activeItems => isDesktopMode ? desktopItems : mobileItems;

  void _setIndex(int index) {
    setState(() {
      final safeIndex = (index + activeItems.length) % activeItems.length;
      if (isDesktopMode) {
        desktopIndex = safeIndex;
      } else {
        mobileIndex = safeIndex;
      }
    });
  }

  void _setPlatform(bool desktop) {
    setState(() => isDesktopMode = desktop);
  }

  @override
  Component build(BuildContext context) {
    final currentList = activeItems;
    final currentItem = currentList[activeIndex];

    return section(id: 'screenshots', classes: 'section-padding showcase-section', [
      div(classes: 'container', [
        const SectionHeader(
          eyebrow: 'Design & Experience Showcase',
          title: 'Every Screen Crafted for Tranquility',
          description:
              'Seamlessly synchronized across Mobile and Desktop. Explore all 8 mobile screens and 8 native desktop workspaces.',
        ),

        // Segmented platform switch
        div(classes: 'showcase-platform-toggle-wrap', [
          div(classes: 'showcase-platform-toggle', attributes: {'role': 'tablist', 'aria-label': 'Select platform showcase'}, [
            button(
              classes: 'platform-toggle-btn${!isDesktopMode ? ' active' : ''}',
              attributes: {'role': 'tab', 'aria-selected': (!isDesktopMode).toString()},
              onClick: () => _setPlatform(false),
              [
                span(classes: 'toggle-icon', [Component.text('📱')]),
                span(classes: 'toggle-text', [Component.text('Mobile App (8 Screens)')]),
              ],
            ),
            button(
              classes: 'platform-toggle-btn${isDesktopMode ? ' active' : ''}',
              attributes: {'role': 'tab', 'aria-selected': isDesktopMode.toString()},
              onClick: () => _setPlatform(true),
              [
                span(classes: 'toggle-icon', [Component.text('🖥️')]),
                span(classes: 'toggle-text', [Component.text('Desktop App (8 Screens)')]),
              ],
            ),
          ]),
        ]),

        // Showcase Stage
        if (!isDesktopMode) ...[
          // Mobile Layout with 4 context features around the phone
          div(classes: 'showcase-around', [
            div(classes: 'context-column', [
              const _ContextFeature(
                number: '01',
                title: 'Sacred Jap Counter',
                description: 'Smooth touch beads with real-time mantra counter and haptic feedback.',
              ),
              const _ContextFeature(
                number: '02',
                title: 'Devotee Profile & Path',
                description: 'Apple ID-grade setup for devotee name, sacred spiritual path, and daily mantra.',
              ),
            ]),
            div(classes: 'screenshots-stage', [
              PhoneMockup(
                image: currentItem.image,
                alt: '${currentItem.title} — Digital Mala Mobile Screenshot',
              ),
              _buildControls(currentList),
              _buildCaption(currentItem),
            ]),
            div(classes: 'context-column', [
              const _ContextFeature(
                number: '03',
                title: 'Sadhana Insights',
                description: 'Daily streaks, mala completions, and Apple Health-style activity heatmaps.',
              ),
              const _ContextFeature(
                number: '04',
                title: 'Pranayama & Soundscapes',
                description: 'Ground your mind with guided breathing rhythms and 432 Hz calming frequencies.',
              ),
            ]),
          ]),
        ] else ...[
          // Desktop Layout with widescreen window mockup
          div(classes: 'desktop-screenshots-stage', [
            div(classes: 'desktop-mockup-wrapper', [
              DesktopMockup(
                image: currentItem.image,
                alt: '${currentItem.title} — Digital Mala Desktop Screenshot',
              ),
            ]),
            _buildControls(currentList),
            _buildCaption(currentItem),
          ]),
        ],

        // 8 Interactive Screen Tabs
        div(classes: 'screen-thumbnails-bar', [
          div(classes: 'screen-thumbnails-header', [
            span(classes: 'thumbnails-label', [
              Component.text(isDesktopMode ? 'Browse all 8 Desktop Screens:' : 'Browse all 8 Mobile Screens:'),
            ]),
            span(classes: 'thumbnails-counter', [
              Component.text('Screen ${activeIndex + 1} of ${currentList.length}'),
            ]),
          ]),
          div(classes: 'screenshots-tabs', [
            for (int i = 0; i < currentList.length; i++)
              button(
                classes: 'screenshots-tab${i == activeIndex ? ' active' : ''}',
                attributes: {'aria-pressed': (i == activeIndex).toString()},
                onClick: () => _setIndex(i),
                [
                  span(classes: 'tab-icon', [Component.text(currentList[i].icon)]),
                  span(classes: 'tab-title', [Component.text(currentList[i].category)]),
                ],
              ),
          ]),
        ]),
      ]),
    ]);
  }

  Component _buildControls(List<ScreenshotItem> list) => div(classes: 'screenshot-controls', [
    button(
      classes: 'screenshot-arrow',
      attributes: {'aria-label': 'Previous screenshot'},
      onClick: () => _setIndex(activeIndex - 1),
      [Component.text('‹')],
    ),
    span(classes: 'screenshot-counter', [
      Component.text('${activeIndex + 1} / ${list.length}'),
    ]),
    button(
      classes: 'screenshot-arrow',
      attributes: {'aria-label': 'Next screenshot'},
      onClick: () => _setIndex(activeIndex + 1),
      [Component.text('›')],
    ),
  ]);

  Component _buildCaption(ScreenshotItem item) => div(
    classes: 'screenshot-caption',
    attributes: {'aria-live': 'polite', 'aria-atomic': 'true'},
    [
      div(classes: 'caption-pill-row', [
        span(classes: 'caption-number-pill', [Component.text('${item.icon} ${item.category} · Screen ${item.id} of 8')]),
      ]),
      h3([Component.text(item.title)]),
      p([Component.text(item.desc)]),
    ],
  );
}

class _ContextFeature extends StatelessComponent {
  final String number, title, description;
  const _ContextFeature({required this.number, required this.title, required this.description});
  @override
  Component build(BuildContext context) => div(classes: 'context-feature', [
    span(classes: 'context-number', [Component.text(number)]),
    h3([Component.text(title)]),
    p([Component.text(description)]),
  ]);
}
