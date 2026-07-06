import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TimelineStepData {
  final String step;
  final String title;
  final String desc;
  const TimelineStepData({required this.step, required this.title, required this.desc});
}

class HowItWorks extends StatelessComponent {
  const HowItWorks({super.key});

  static const List<TimelineStepData> steps = [
    TimelineStepData(
      step: '01',
      title: 'Choose Mantra',
      desc: 'Select a traditional mantra like Om Namah Shivaya, Hare Krishna, or add your own custom spiritual mantra.',
    ),
    TimelineStepData(
      step: '02',
      title: 'Select Mala',
      desc: 'Pick your virtual prayer beads style, like traditional Rudraksha, pure Tulsi, or glowing Sphatik crystal.',
    ),
    TimelineStepData(
      step: '03',
      title: 'Start Chanting',
      desc: 'Tap the screen to count Japa. Enjoy simulated physical bead haptic feedback and soothing sound cues.',
    ),
    TimelineStepData(
      step: '04',
      title: 'Track Sadhana',
      desc: 'Review streaks, analyze progress with charts and heatmaps, and export PDF reports to log your consistency.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'how-it-works',
      classes: 'section-padding reveal',
      styles: const Styles(backgroundColor: Color('#FFFFFF')),
      [
        div(classes: 'container', [
          // Section Title
          div(classes: 'section-title-wrap', [
            h2([text('How It Works')]),
            p([
              text('A simple, distraction-free routine to integrate digital Japa counter into your daily spiritual practice (Sadhana).')
            ]),
          ]),
          
          // Timeline Row
          div(classes: 'timeline', [
            for (var step in steps)
              div(classes: 'timeline-step', [
                div(classes: 'step-number', [text(step.step)]),
                h3([text(step.title)]),
                p([text(step.desc)]),
              ])
          ]),
        ]),
      ],
    );
  }
}
