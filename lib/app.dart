import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

// Import our custom components
import 'components/navigation.dart';
import 'components/hero.dart';
import 'components/features.dart';
import 'components/screenshots.dart';
import 'components/how_it_works.dart';
import 'components/why_us.dart';
import 'components/reviews.dart';
import 'components/faq.dart';
import 'components/download_cta.dart';
import 'components/footer.dart';

// The main component of the application.
//
// By using the @client annotation, this component will be automatically compiled to Javascript and mounted
// on the client, enabling interactive client-side state (navigation toggles, carousel slide shifting, FAQ collapsible details).
@client
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'app-container', [
      // 1. Sticky Navigation
      const Navigation(),
      
      // Main Page Content wrapper
      main_(styles: const Styles(position: Position.relative()), [
        // Background golden blobs for visual richness
        div(classes: 'decor-blob blob-gold-1', []),
        div(classes: 'decor-blob blob-gold-2', []),
        
        // 2. Hero Section
        const HeroSection(),

        // 3. Features Cards
        const Features(),

        // 4. Screenshots Device Slider
        const Screenshots(),

        // 5. How It Works
        const HowItWorks(),

        // 6. Why Digital Mala
        const WhyUs(),

        // 7. Community Reviews
        const Reviews(),

        // 8. Collapsible FAQ
        const Faq(),

        // 9. Download CTA Banner
        const DownloadCta(),
      ]),

      // 10. Footer Section
      const Footer(),
    ]);
  }
}
