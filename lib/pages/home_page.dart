import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/page_seo.dart';
import '../components/compact_download.dart';

// Reusable components
import '../components/navigation.dart';
import '../components/hero.dart';
import '../components/value_strip.dart';
import '../components/editorial_story.dart';
import '../components/product_showcase.dart';
import '../components/privacy_philosophy.dart';
import '../components/multi_device_showcase.dart';
import '../components/whats_new.dart';
import '../components/features.dart';
import '../components/screenshots.dart';
import '../components/how_it_works.dart';
import '../components/why_us.dart';
import '../components/screenshot_story.dart';
import '../components/reviews.dart';
import '../components/faq.dart';
import '../components/download_cta.dart';
import '../components/footer.dart';

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
        // 2. Full-Screen Product Hero
        const HeroSection(),

        // 3. Value Ribbon
        const ValueStrip(),

        // 4. Editorial Story 1: "Less distraction. More devotion."
        const EditorialStoryOne(),

        // 5. Product Showcase: Digital Jaap (4 Sacred Malas, Tactile Counting)
        const DigitalJaapShowcase(),

        // 6. Product Showcase: Sankalp Tracker (Vows & Milestones)
        const SankalpShowcase(),

        // 7. Editorial Story 2: "Your practice deserves its own space."
        const EditorialStoryTwo(),

        // 8. Product Showcase: Sadhana Heatmap (Year-round visual dedication)
        const HeatmapShowcase(),

        // 9. Product Showcase: Guided Pranayama (Mindful Breathing)
        const PranayamaShowcase(),

        // 10. Editorial Story 3: "Built for consistency. Designed for peace."
        const EditorialStoryThree(),

        // 11. Privacy & Offline-First Philosophy: "Your data stays yours."
        const PrivacyPhilosophy(),

        // 12. One Practice. Multiple Devices. (Universal Harmony)
        const MultiDeviceShowcase(),

        // 13. 🌟 What's New in Version 2.0.0
        const WhatsNew(),

        // 13. Features Cards Grid
        const Features(),

        // 14. Screenshots Device Slider (8 Mobile + 8 Desktop)
        const Screenshots(),

        // 15. How It Works (Four Simple Steps)
        const HowItWorks(),

        // 16. Why Digital Mala & Tradition
        const WhyUs(),
        const ScreenshotStory(),

        // 17. Community Reviews
        const Reviews(),

        // 18. Collapsible FAQ
        const Faq(),

        // 19. Download CTA Banner & Desktop Availability (#desktop & #download)
        const DownloadCta(),
      ]),

      // 20. Footer Section
      const Footer(),
      const CompactDownload(),
    ]);
  }
}
