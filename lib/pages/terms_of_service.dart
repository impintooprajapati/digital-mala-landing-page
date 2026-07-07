import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/navigation.dart';
import '../components/footer.dart';

class TermsOfServicePage extends StatelessComponent {
  const TermsOfServicePage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'app-container page-subpage', [
      // Navigation
      const Navigation(),
      
      main_(classes: 'subpage-content', [
        // Background decorative blob
        div(classes: 'decor-blob blob-gold-1', []),
        
        // Subpage Hero
        section(classes: 'subpage-hero', [
          div(classes: 'container', [
            // Breadcrumbs
            nav(classes: 'breadcrumbs', [
              a(href: '/', [text('Home')]),
              span(classes: 'separator', [text('/')]),
              span(classes: 'current', [text('Terms of Service')]),
            ]),
            
            h1([text('Terms of Service')]),
            p(classes: 'last-updated', [text('Last Updated: July 2026')]),
          ]),
        ]),

        // Content Body
        section(classes: 'subpage-body', [
          div(classes: 'container container-narrow', [
            div(classes: 'legal-content', [
              h2([text('1. Acceptance of Terms')]),
              p([
                text('By downloading and using the Digital Mala mobile application (the "App"), you agree to be bound by these Terms of Service ("Terms"). If you do not agree to these Terms, please do not download or use the App.')
              ]),
              
              h2([text('2. Description of Service')]),
              p([
                text('Digital Mala is a digital Japa Counter designed to support spiritual chanting, meditation, and mindfulness. The App simulates traditional prayer beads and provides haptic feedback, tracking metrics, streaks, custom mantra creation, and PDF progress reporting. All functionality is provided locally on your device.')
              ]),

              h2([text('3. License Grant')]),
              p([
                text('We grant you a personal, non-transferable, non-exclusive, revocable license to download and use the App on your mobile device for your personal, non-commercial spiritual practices, in accordance with these Terms.')
              ]),

              h2([text('4. User Responsibilities & Data')]),
              p([
                text('As an offline application, the App stores all logs, counts, and settings locally on your device:')
              ]),
              ul([
                li([
                  strong([text('Data Responsibility: ')]),
                  text('You are solely responsible for managing your device storage and keeping backups of your logs using the App’s JSON export feature.')
                ]),
                li([
                  strong([text('Data Deletion: ')]),
                  text('Uninstalling the App or clearing its data will permanently delete all your information. We cannot retrieve or restore this data for you under any circumstances.')
                ]),
                li([
                  strong([text('Lawful Use: ')]),
                  text('You agree to use the App solely for peaceful, meditative, and lawful purposes.')
                ]),
              ]),

              h2([text('5. Intellectual Property')]),
              p([
                text('All intellectual property rights in the App, including the design, logos, icons, source code, and graphics, belong exclusively to Digital Mala and its developers. You may not decompile, reverse-engineer, copy, or distribute the App or its components without express written permission.')
              ]),

              h2([text('6. Disclaimer of Warranties')]),
              p([
                text('The App is provided on an "AS IS" and "AS AVAILABLE" basis, without warranties of any kind, express or implied. We do not warrant that the App will be uninterrupted, error-free, or meet all your expectations. Your spiritual journey is unique, and the App is designed simply as a supportive tool.')
              ]),

              h2([text('7. Limitation of Liability')]),
              p([
                text('To the maximum extent permitted by law, Digital Mala and its developers shall not be liable for any direct, indirect, incidental, special, or consequential damages resulting from the use or inability to use the App, including but not limited to device malfunctions or loss of chanting logs.')
              ]),

              h2([text('8. Governing Law')]),
              p([
                text('These Terms shall be governed by and construed in accordance with the laws of India, without regard to conflict of law principles.')
              ]),

              h2([text('9. Contact Us')]),
              p([
                text('If you have any questions, feedback, or concerns regarding these Terms, please reach out to us at '),
                a(href: 'mailto:legal@digitalmala.app', [text('legal@digitalmala.app')]),
                text('.')
              ]),
              
              div(classes: 'back-home-wrap', [
                a(href: '/', classes: 'btn-back-home', [
                  span([text('←')]),
                  text(' Back to Home')
                ])
              ])
            ]),
          ]),
        ]),
      ]),

      // Footer
      const Footer(),
    ]);
  }
}
