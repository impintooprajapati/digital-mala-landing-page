import 'dart:convert';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../constants/downloads.dart';

const siteUrl = 'https://digitalmala.impintooprajapati.in';
const homeTitle = 'Digital Mala — Free Offline Japa & Mantra Counter';
const homeDescription =
    'Free offline mantra & japa counter for Android, macOS, Windows & Linux. Virtual beads, sadhana heatmap & breathwork. Private, 100% offline, zero ads.';

/// Rendered into the HTML head at build time, not injected only after hydration.
class PageSeo extends StatelessComponent {
  final String title, description, path;
  const PageSeo({required this.title, required this.description, this.path = '/', super.key});

  @override
  Component build(BuildContext context) {
    final url = '$siteUrl$path';
    return Document.head(
      title: title,
      meta: {
        'description': description,
        'robots': 'index, follow, max-image-preview:large',
        'twitter:card': 'summary_large_image',
        'twitter:title': title,
        'twitter:description': description,
        'twitter:image': '$siteUrl/images/Feature_Graphic.png',
        'twitter:image:alt': 'Digital Mala — private, offline mantra counting',
      },
      children: [
        for (final entry in <String, String>{
          'og:title': title,
          'og:description': description,
          'og:url': url,
          'og:type': 'website',
          'og:site_name': 'Digital Mala',
          'og:locale': 'en_IN',
          'og:image': '$siteUrl/images/Feature_Graphic.png',
          'og:image:width': '1024',
          'og:image:height': '500',
          'og:image:alt': 'Digital Mala — private, offline mantra counting',
        }.entries)
          meta(id: entry.key, content: entry.value, attributes: {'property': entry.key}),
        link(id: 'canonical', rel: 'canonical', href: url),
        if (path == '/') ...[
          link(
            rel: 'preload',
            href: '/images/screenshots_raw/m4.png',
            attributes: {'as': 'image', 'fetchpriority': 'high'},
          ),
          script(
            id: 'site-structured-data',
            attributes: {'type': 'application/ld+json'},
            content: jsonEncode({
              '@context': 'https://schema.org',
              '@graph': [
                {
                  '@type': 'WebSite',
                  '@id': '$siteUrl/#website',
                  'url': '$siteUrl/',
                  'name': 'Digital Mala',
                  'inLanguage': 'en',
                },
                {
                  '@type': 'WebPage',
                  '@id': '$siteUrl/#webpage',
                  'url': '$siteUrl/',
                  'name': homeTitle,
                  'description': homeDescription,
                  'isPartOf': {'@id': '$siteUrl/#website'},
                  'about': {'@id': '$siteUrl/#app'},
                },
                {
                  '@type': 'MobileApplication',
                  '@id': '$siteUrl/#app',
                  'name': 'Digital Mala',
                  'url': '$siteUrl/',
                  'operatingSystem': 'Android',
                  'applicationCategory': 'LifestyleApplication',
                  'description': homeDescription,
                  'downloadUrl': playStoreUrl,
                  'installUrl': playStoreUrl,
                  'image': '$siteUrl/images/Feature_Graphic.png',
                  'screenshot': [
                    '$siteUrl/images/screenshots_raw/m4.png',
                    '$siteUrl/images/screenshots_raw/m5.png',
                  ],
                  'featureList': [
                    'Offline mantra counting',
                    'Custom mantras and daily goals',
                    'Virtual mala bead styles',
                    'Practice history and streaks',
                    'Optional reminders',
                    'Local data storage',
                  ],
                  'offers': {'@type': 'Offer', 'price': '0', 'priceCurrency': 'INR', 'url': playStoreUrl},
                },
                {
                  '@type': 'SoftwareApplication',
                  '@id': '$siteUrl/#desktop-app',
                  'name': 'Digital Mala Desktop',
                  'url': '$siteUrl/#desktop',
                  'operatingSystem': 'macOS, Windows, Linux',
                  'softwareVersion': desktopVersion,
                  'applicationCategory': 'LifestyleApplication',
                  'description':
                      'Offline mantra and japa counting natively for macOS, Windows and Linux with spacebar counting and wide screen dashboards.',
                  'downloadUrl': [
                    macosDmgUrl,
                    microsoftStoreUrl,
                    windowsZipUrl,
                    windowsMsixUrl,
                    linuxFlatpakUrl,
                    linuxArchiveUrl,
                  ],
                  'screenshot': '$siteUrl/images/screenshots_raw/d4.png',
                  'offers': {'@type': 'Offer', 'price': '0', 'priceCurrency': 'INR'},
                },
              ],
            }),
          ),
        ],
      ],
    );
  }
}
