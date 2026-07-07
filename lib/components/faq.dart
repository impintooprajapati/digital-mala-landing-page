import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Faq extends StatelessComponent {
  const Faq({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'faq',
      classes: 'section-padding reveal',
      styles: const Styles(backgroundColor: Color('#FFFFFF')),
      [
        div(classes: 'container', [
          // Section Title
          div(classes: 'section-title-wrap', [
            h2([text('Frequently Asked Questions')]),
            p([text('Common questions about the Digital Mala app, privacy options, and chanting settings.')]),
          ]),

          // FAQ Accordion list
          div(classes: 'faq-list', [
            const FaqItem(
              question: 'Where is my chanting data stored?',
              answer: 'All data is stored directly on your phone in a secure local database. The app operates 100% offline, meaning we do not run servers and cannot access your logs. If you uninstall the app, your local database is permanently deleted.',
            ),
            const FaqItem(
              question: 'Can I back up my progress or transfer it?',
              answer: 'Yes! You can export all your practice logs as a JSON file for local backup. You can also generate a beautifully formatted PDF report of your spiritual progress to share or keep.',
            ),
            const FaqItem(
              question: 'Is the app completely free and ad-free?',
              answer: 'Yes. Digital Mala is created as a pure spiritual tool. It features zero ads, zero banner popups, and zero hidden tracking software. It is 100% free to download and use.',
            ),
            const FaqItem(
              question: 'How do the haptic feedback features work?',
              answer: 'The app uses your mobile device\'s built-in haptic engine to create a subtle vibration pulse when you transition to the next bead. This allows you to count Japa without constantly looking at the screen.',
            ),
            const FaqItem(
              question: 'Can I add custom mantras and set goals?',
              answer: 'Absolutely. You can write custom mantras, select traditional counter limits (like 27, 54, 108, or 1008 beads), and track your statistics independently for each mantra.',
            ),
          ]),
        ]),
      ],
    );
  }
}

class FaqItem extends StatefulComponent {
  final String question;
  final String answer;

  const FaqItem({required this.question, required this.answer, super.key});

  @override
  State<FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool isOpen = false;

  @override
  Component build(BuildContext context) {
    return div(classes: 'faq-item${isOpen ? ' open' : ''}', [
      button(
        classes: 'faq-question-btn',
        onClick: () {
          setState(() {
            isOpen = !isOpen;
          });
        },
        [
          h3([text(component.question)]),
          span(classes: 'faq-icon', [
            raw('''
            <svg viewBox="0 0 24 24" width="18" height="18" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
              <polyline points="6 9 12 15 18 9"></polyline>
            </svg>
            ''')
          ]),
        ],
      ),
      div(classes: 'faq-answer', [
        div(classes: 'faq-answer-content', [
          p([text(component.answer)]),
        ]),
      ]),
    ]);
  }
}
