import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'phone_mockup.dart';
import 'section_header.dart';

class ScreenshotStory extends StatelessComponent {
  const ScreenshotStory({super.key});
  @override
  Component build(BuildContext context) => section(id: 'app-story', classes: 'section-padding story-section', [
    div(classes: 'container', [
      const SectionHeader(
        eyebrow: 'Quietly crafted',
        title: 'Designed to Disappear\nInto Your Practice',
        description: 'Thoughtful details, from your first mantra to the moments you return to each day.',
      ),
      div(classes: 'story-grid', [
        const _StoryItem(
          title: 'Focus',
          description: 'A serene mala counter with smooth beads and round progress.',
          image: 'm4',
          alt: 'Digital Mala sacred jap counter and virtual prayer beads',
        ),
        const _StoryItem(
          title: 'Reflect',
          description: 'Review your chanting history, streaks and activity heatmap.',
          image: 'm5',
          alt: 'Digital Mala insights with streaks, practice history and activity heatmap',
        ),
        const _StoryItem(
          title: 'Personalize',
          description: 'Set your spiritual path, devotee profile name, and daily mantra.',
          image: 'm3',
          alt: 'Digital Mala setup with personal user profile and spiritual path',
        ),
      ]),
    ]),
  ]);
}

class _StoryItem extends StatelessComponent {
  final String title, description, image, alt;
  const _StoryItem({required this.title, required this.description, required this.image, required this.alt});
  @override
  Component build(BuildContext context) => figure(classes: 'story-item', [
    div(classes: 'story-device-wrap', [PhoneMockup(image: '/images/screenshots_raw/$image.png', alt: alt)]),
    figcaption([
      h3([Component.text(title)]),
      p([Component.text(description)]),
    ]),
  ]);
}
