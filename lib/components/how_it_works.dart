import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TimelineStepData {
  final String step;
  final String iconSvg;
  final String title;
  final String desc;
  const TimelineStepData({required this.step, required this.iconSvg, required this.title, required this.desc});
}

class HowItWorks extends StatelessComponent {
  const HowItWorks({super.key});

  static const List<TimelineStepData> steps = [
    TimelineStepData(
      step: '01',
      iconSvg: '<svg viewBox="0 0 24 24" width="32" height="32" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 20h9M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>',
      title: 'Choose Mantra',
      desc: 'Select a traditional mantra like Om Namah Shivaya, or write your own custom spiritual chant.',
    ),
    TimelineStepData(
      step: '02',
      iconSvg: '<svg viewBox="0 0 24 24" width="32" height="32" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="9"></circle><path d="M12 3a9 9 0 0 1 9 9M9 12a3 3 0 1 1 6 0 3 3 0 0 1-6 0z"></path></svg>',
      title: 'Select Mala Style',
      desc: 'Choose your virtual prayer beads, simulating traditional Rudraksha, pure Tulsi, or crystal Sphatik.',
    ),
    TimelineStepData(
      step: '03',
      iconSvg: '<svg viewBox="0 0 24 24" width="32" height="32" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 11V3a1 1 0 0 1 2 0v8a1 1 0 0 1-2 0zM10 13V5.5a1 1 0 0 1 2 0v7.5M8 15V8a1 1 0 0 1 2 0v7M6 18v-4.5a1 1 0 0 1 2 0V18M18 13.5a3.5 3.5 0 1 1-7 0v-2.5h7v2.5z"></path></svg>',
      title: 'Chant Mindfully',
      desc: 'Tap to increment. Enjoy realistic bead movement, soothing haptic vibrations, and sound prompts.',
    ),
    TimelineStepData(
      step: '04',
      iconSvg: '<svg viewBox="0 0 24 24" width="32" height="32" fill="none" stroke="#C99512" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 3v18h18M18.7 8l-5.1 5.2-2.8-2.7L7 14.3"></path></svg>',
      title: 'Track Sadhana',
      desc: 'Review streaks, analyze progress with charts and heatmaps, and export local PDF reports.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'how-it-works',
      classes: 'section-padding section-tinted-bg reveal',
      [
        div(classes: 'container', [
          // Section Title
          div(classes: 'section-title-wrap', [
            h2([text('How It Works')]),
            p([
              text('A simple, distraction-free routine to integrate a digital Japa counter into your daily spiritual practice (Sadhana).')
            ]),
          ]),
          
          // Timeline Row
          div(classes: 'timeline', [
            for (var step in steps)
              div(classes: 'timeline-step', [
                div(classes: 'step-number', [
                  span(classes: 'step-num-text', [text(step.step)]),
                ]),
                div(classes: 'step-icon-wrap', [
                  raw(step.iconSvg),
                ]),
                h3([text(step.title)]),
                p([text(step.desc)]),
              ])
          ]),
        ]),
      ],
    );
  }
}
