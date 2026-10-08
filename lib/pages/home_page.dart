import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/page_seo.dart';
import '../components/compact_download.dart';

// Import the reusable components
import '../components/navigation.dart';
import '../components/hero.dart';
import '../components/features.dart';
import '../components/screenshots.dart';
import '../components/how_it_works.dart';
import '../components/why_us.dart';
import '../components/reviews.dart';
import '../components/faq.dart';
import '../components/download_cta.dart';
import '../components/footer.dart';
import '../components/value_strip.dart';
import '../components/screenshot_story.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'app-container', [
      const PageSeo(title: homeTitle, description: homeDescription, path: '/'),
      // 1. Sticky Navigation
      const Navigation(),

      // Main Page Content wrapper
      main_(id: 'main-content', styles: const Styles(position: Position.relative()), [
        // 2. Hero Section
        const HeroSection(),
        const ValueStrip(),

        // 3. Features Cards
        const Features(),

        // 4. Screenshots Device Slider
        const Screenshots(),

        // 5. How It Works
        const HowItWorks(),

        // 6. Why Digital Mala
        const WhyUs(),
        const ScreenshotStory(),

        // 7. Community Reviews
        const Reviews(),

        // 8. Collapsible FAQ
        const Faq(),

        // 9. Download CTA Banner
        const DownloadCta(),
      ]),

      // 10. Footer Section
      const Footer(),
      const CompactDownload(),
    ]);
  }
}
