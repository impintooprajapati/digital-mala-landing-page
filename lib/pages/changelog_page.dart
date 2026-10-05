import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/page_seo.dart';
import '../components/navigation.dart';
import '../components/changelog.dart';
import '../components/footer.dart';

class ChangelogPage extends StatelessComponent {
  const ChangelogPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'app-container page-subpage', [
      const PageSeo(
        title: 'Release Notes & App Updates — Digital Mala',
        description:
            'Explore Digital Mala release notes: new mala bead styles, languages, chanting goals, haptic feedback and improvements to your daily practice.',
        path: '/changelog',
      ),
      const Navigation(contentHref: '/changelog#main-content'),

      main_(id: 'main-content', classes: 'subpage-content', [
        div(classes: 'decor-blob blob-gold-1', []),

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
                "name": "Changelog",
                "item": "https://digitalmala.app/changelog"
              }
            ]
          }
          ''',
        ),

        section(classes: 'subpage-hero', [
          div(classes: 'container', [
            nav(classes: 'breadcrumbs', [
              a(href: '/', [Component.text('Home')]),
              span(classes: 'separator', [Component.text('/')]),
              span(classes: 'current', [Component.text("What's New")]),
            ]),
            h1([Component.text("Changelog & Release Notes")]),
            p(classes: 'last-updated', [Component.text('Stay up to date with the latest improvements and features.')]),
          ]),
        ]),

        section(classes: 'subpage-body', [
          div(classes: 'container container-narrow', [
            const Changelog(),
            div(classes: 'back-home-wrap', [
              a(href: '/', classes: 'btn-back-home', [
                span([Component.text('←')]),
                Component.text(' Back to Home'),
              ]),
            ]),
          ]),
        ]),
      ]),

      const Footer(),
    ]);
  }
}
