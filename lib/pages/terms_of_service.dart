import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/page_seo.dart';
import '../components/navigation.dart';
import '../components/footer.dart';

class TermsOfServicePage extends StatelessComponent {
  const TermsOfServicePage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'app-container page-subpage', [
      const PageSeo(
        title: 'Terms of Service — Digital Mala',
        description:
            'Read the terms for using Digital Mala, the free offline mantra counter, including local data, responsible use and support information.',
        path: '/terms-of-service',
      ),
      // Navigation
      const Navigation(contentHref: '/terms-of-service#main-content'),

      main_(id: 'main-content', classes: 'subpage-content', [
        // Background decorative blob
        div(classes: 'decor-blob blob-gold-1', []),

        // BreadcrumbList structured data
        script(
          attributes: {'type': 'application/ld+json'},
          content: '''
          {
            "@context": "https://schema.org",
            "@type": "BreadcrumbList",
            "itemListElement": [
              {
                "@type": "ListItem",
                "position": 1,
                "name": "Home",
                "item": "https://digitalmala.app/"
              },
              {
                "@type": "ListItem",
                "position": 2,
                "name": "Terms of Service",
                "item": "https://digitalmala.app/terms-of-service"
              }
            ]
          }
          ''',
        ),

        // Subpage Hero
        section(classes: 'subpage-hero', [
          div(classes: 'container', [
            // Breadcrumbs
            nav(classes: 'breadcrumbs', [
              a(href: '/', [Component.text('Home')]),
              span(classes: 'separator', [Component.text('/')]),
              span(classes: 'current', [Component.text('Terms of Service')]),
            ]),

            h1([Component.text('Terms of Service')]),
            p(classes: 'last-updated', [Component.text('Last Updated: July 2026')]),
          ]),
        ]),

        // Content Body
        section(classes: 'subpage-body', [
          div(classes: 'container container-narrow', [
            div(classes: 'legal-content', [
              h2([Component.text('1. Acceptance of Terms')]),
              p([
                Component.text(
                  'By downloading and using the Digital Mala mobile application (the "App"), you agree to be bound by these Terms of Service ("Terms"). If you do not agree to these Terms, please do not download or use the App.',
                ),
              ]),

              h2([Component.text('2. Description of Service')]),
              p([
                Component.text(
                  'Digital Mala is a digital Japa Counter designed to support spiritual chanting, meditation, and mindfulness. The App simulates traditional prayer beads and provides haptic feedback, tracking metrics, streaks, custom mantra creation, and PDF progress reporting. All functionality is provided locally on your device.',
                ),
              ]),

              h2([Component.text('3. License Grant')]),
              p([
                Component.text(
                  'I grant you a personal, non-transferable, non-exclusive, revocable license to download and use the App on your mobile device for your personal, non-commercial spiritual practices, in accordance with these Terms.',
                ),
              ]),

              h2([Component.text('4. User Responsibilities & Data')]),
              p([
                Component.text(
                  'As an offline application, the App stores all logs, counts, and settings locally on your device:',
                ),
              ]),
              ul([
                li([
                  strong([Component.text('Data Responsibility: ')]),
                  Component.text(
                    'You are solely responsible for managing your device storage and keeping backups of your logs using the App’s JSON export feature.',
                  ),
                ]),
                li([
                  strong([Component.text('Data Deletion: ')]),
                  Component.text(
                    'Uninstalling the App or clearing its data will permanently delete all your information. I cannot retrieve or restore this data for you under any circumstances.',
                  ),
                ]),
                li([
                  strong([Component.text('Lawful Use: ')]),
                  Component.text('You agree to use the App solely for peaceful, meditative, and lawful purposes.'),
                ]),
              ]),

              h2([Component.text('5. Intellectual Property')]),
              p([
                Component.text(
                  'All intellectual property rights in the App, including the design, logos, icons, source code, and graphics, belong exclusively to Digital Mala and its developers. You may not decompile, reverse-engineer, copy, or distribute the App or its components without express written permission.',
                ),
              ]),

              h2([Component.text('6. Disclaimer of Warranties')]),
              p([
                Component.text(
                  'The App is provided on an "AS IS" and "AS AVAILABLE" basis, without warranties of any kind, express or implied. I do not warrant that the App will be uninterrupted, error-free, or meet all your expectations. Your spiritual journey is unique, and the App is designed simply as a supportive tool.',
                ),
              ]),

              h2([Component.text('7. Limitation of Liability')]),
              p([
                Component.text(
                  'To the maximum extent permitted by law, Digital Mala and its developers shall not be liable for any direct, indirect, incidental, special, or consequential damages resulting from the use or inability to use the App, including but not limited to device malfunctions or loss of chanting logs.',
                ),
              ]),

              h2([Component.text('8. Governing Law')]),
              p([
                Component.text(
                  'These Terms shall be governed by and construed in accordance with the laws of India, without regard to conflict of law principles.',
                ),
              ]),

              h2([Component.text('9. Contact the Developer')]),
              p([
                Component.text(
                  'If you have any questions, feedback, or concerns regarding these Terms, please reach out to me at ',
                ),
                a(href: 'mailto:digitalmala@impintooprajapati.in', [
                  Component.text('digitalmala@impintooprajapati.in'),
                ]),
                Component.text('.'),
              ]),

              div(classes: 'back-home-wrap', [
                a(href: '/', classes: 'btn-back-home', [
                  span([Component.text('←')]),
                  Component.text(' Back to Home'),
                ]),
              ]),
            ]),
          ]),
        ]),
      ]),

      // Footer
      const Footer(),
    ]);
  }
}
