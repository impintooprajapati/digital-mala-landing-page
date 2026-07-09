import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HowItWorks extends StatelessComponent {
  const HowItWorks({super.key});

  static const List<_StepData> steps = [
    _StepData(
      number: '01',
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M12 20h9M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>',
      title: 'Choose Your Mantra',
      desc: 'Select a traditional mantra like Om Namah Shivaya, or write your own custom spiritual chant.',
    ),
    _StepData(
      number: '02',
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="9"></circle><path d="M12 3a9 9 0 0 1 9 9M9 12a3 3 0 1 1 6 0 3 3 0 0 1-6 0z"></path></svg>',
      title: 'Select Mala Style',
      desc: 'Choose your virtual prayer beads — Rudraksha, Tulsi, Sphatik crystal, or sandalwood.',
    ),
    _StepData(
      number: '03',
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M12 11V3a1 1 0 0 1 2 0v8a1 1 0 0 1-2 0zM10 13V5.5a1 1 0 0 1 2 0v7.5M8 15V8a1 1 0 0 1 2 0v7M6 18v-4.5a1 1 0 0 1 2 0V18M18 13.5a3.5 3.5 0 1 1-7 0v-2.5h7v2.5z"></path></svg>',
      title: 'Chant Mindfully',
      desc: 'Tap to count. Realistic bead animation, haptic vibration, and gentle sound prompts keep you focused.',
    ),
    _StepData(
      number: '04',
      iconSvg: '<svg viewBox="0 0 24 24" width="28" height="28" fill="none" stroke="#C99512" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M3 3v18h18M18.7 8l-5.1 5.2-2.8-2.7L7 14.3"></path></svg>',
      title: 'Track Your Sadhana',
      desc: 'Review streaks, heatmaps, charts, and export local PDF reports — all data stays on your device.',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'how-it-works',
      classes: 'section-padding section-tinted-bg reveal',
      [
        div(classes: 'container', [
          div(classes: 'section-title-wrap', [
            h2([text('How It Works')]),
            p([
              text('A simple, distraction-free routine to integrate a digital Japa counter into your daily spiritual practice (Sadhana).')
            ]),
          ]),
          
          div(classes: 'how-it-works-flow', [
            for (int i = 0; i < steps.length; i++)
              _HowItWorksStep(step: steps[i], index: i, total: steps.length),
          ]),
        ]),
      ],
    );
  }
}

class _StepData {
  final String number;
  final String iconSvg;
  final String title;
  final String desc;
  
  const _StepData({
    required this.number,
    required this.iconSvg,
    required this.title,
    required this.desc,
  });
}

class _HowItWorksStep extends StatelessComponent {
  final _StepData step;
  final int index;
  final int total;
  
  const _HowItWorksStep({
    required this.step,
    required this.index,
    required this.total,
  });

  @override
  Component build(BuildContext context) {
    final isLast = index == total - 1;
    
    return div(classes: 'hiw-step', [
      div(classes: 'hiw-card', [
        // Number badge + connector
        div(classes: 'hiw-number-badge', [
          span(classes: 'hiw-num', [text(step.number)]),
          if (!isLast)
            div(classes: 'hiw-connector', [
              div(classes: 'hiw-connector-line', []),
              div(classes: 'hiw-connector-dot', []),
            ]),
        ]),
        
        // Icon circle
        div(classes: 'hiw-icon-wrap', [
          raw(step.iconSvg),
        ]),
        
        // Content
        div(classes: 'hiw-content', [
          h3(classes: 'hiw-title', [text(step.title)]),
          p(classes: 'hiw-desc', [text(step.desc)]),
        ]),
      ]),
    ]);
  }
}