import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/page_seo.dart';
import '../components/navigation.dart';
import '../components/footer.dart';

class PrivacyPolicyPage extends StatelessComponent {
  const PrivacyPolicyPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'app-container page-subpage', [
      const PageSeo(
        title: 'Privacy Policy — Digital Mala',
        description:
            'Learn how Digital Mala keeps your mantra counts and practice logs on your device, with no account, cloud storage, ads or tracking.',
        path: '/privacy-policy',
      ),
      // Navigation
      const Navigation(contentHref: '/privacy-policy#main-content'),

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
                "name": "Privacy Policy",
                "item": "https://digitalmala.app/privacy-policy"
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
              span(classes: 'current', [Component.text('Privacy Policy')]),
            ]),

            h1([Component.text('Privacy Policy')]),
            p(classes: 'last-updated', [Component.text('Last Updated: July 2026')]),
          ]),
        ]),

        // Content Body
        section(classes: 'subpage-body', [
          div(classes: 'container container-narrow', [
            div(classes: 'legal-content', [
              h2([Component.text('1. Introduction')]),
              p([
                Component.text(
                  'As the developer of Digital Mala, I respect your spiritual journey and your personal privacy. This Privacy Policy explains how the mobile application collects, uses, and safeguards your information. I believe your spiritual practices should remain completely secure and private.',
                ),
              ]),

              h2([Component.text('2. 100% Offline & No Data Collection')]),
              p([
                Component.text(
                  'Digital Mala is built with a strict privacy-first architecture. The application operates entirely offline on your mobile device:',
                ),
              ]),
              ul([
                li([
                  strong([Component.text('No Accounts: ')]),
                  Component.text(
                    'You are not required to create an account, log in, or provide any personal details (such as your name or email) to use the app.',
                  ),
                ]),
                li([
                  strong([Component.text('Local Database: ')]),
                  Component.text(
                    'All your chanting logs, custom mantras, daily streaks, heatmaps, and progress metrics are stored strictly on your device’s local secure storage.',
                  ),
                ]),
                li([
                  strong([Component.text('No Cloud Servers: ')]),
                  Component.text(
                    'I do not operate databases or backend cloud servers. Your data never leaves your phone.',
                  ),
                ]),
                li([
                  strong([Component.text('No Trackers or Ads: ')]),
                  Component.text(
                    'The app contains zero analytics trackers, third-party software development kits (SDKs), or advertisements. Your chanting behavior is never monitored.',
                  ),
                ]),
              ]),

              h2([Component.text('3. Device Permissions')]),
              p([
                Component.text(
                  'To deliver a premium, tactile experience, the app requests the following optional permissions:',
                ),
              ]),
              ul([
                li([
                  strong([Component.text('Vibration / Haptic Engine: ')]),
                  Component.text(
                    'Used to provide simulated bead haptic pulses during Japa chanting, letting you count rounds mindfully without looking at the screen.',
                  ),
                ]),
                li([
                  strong([Component.text('Storage / Media: ')]),
                  Component.text(
                    'Only used if you explicitly choose to export your Sadhana logs as a JSON backup or generate a PDF report of your progress.',
                  ),
                ]),
              ]),

              h2([Component.text('4. Data Control and Deletion')]),
              p([
                Component.text(
                  'Because your data is stored entirely on your device, you have absolute control over it. You can permanently delete all your data at any time by clearing the app’s cache/data in your device settings or by uninstalling the application. Once deleted, this data cannot be recovered by me, as I do not keep backups.',
                ),
              ]),

              h2([Component.text('5. Children\'s Privacy')]),
              p([
                Component.text(
                  'The application does not collect any personal information and is safe for individuals of all ages. I do not target or knowingly collect data from children.',
                ),
              ]),

              h2([Component.text('6. Changes to this Policy')]),
              p([
                Component.text(
                  'I may update this Privacy Policy from time to time. Any changes will be reflected on this page with an updated date. I encourage you to review this policy periodically.',
                ),
              ]),

              h2([Component.text('7. Contact the Developer')]),
              p([
                Component.text(
                  'If you have any questions or feedback about the app’s privacy practices, please contact me directly at ',
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
