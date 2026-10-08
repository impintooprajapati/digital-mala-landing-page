import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'phone_mockup.dart';
import 'play_store_button.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});
  @override
  Component build(BuildContext context) => section(classes: 'hero', [
    div(classes: 'container hero-grid', [
      div(classes: 'hero-content', [
        span(classes: 'hero-eyebrow', [Component.text('A calmer way to practice')]),
        span(classes: 'hero-product-label', [Component.text('Digital Mala · Mantra & Japa Counter')]),
        h1(classes: 'hero-title', [
          Component.text('Chant with '),
          span([Component.text('Mindfulness.')]),
          br(),
          Component.text('Track with '),
          span([Component.text('Devotion.')]),
        ]),
        p(classes: 'hero-desc', [
          Component.text(
            'A free, offline mantra and japa counter for Android. Stay present, build consistency and deepen your daily spiritual practice — one bead at a time.',
          ),
        ]),
        div(classes: 'hero-actions', [
          const PlayStoreButton(),
          a(href: '/#features', classes: 'text-button', [Component.text('Explore Features')]),
        ]),
        p(classes: 'hero-platform-note', [
          Component.text('Available now on Android. '),
          a(href: '/#desktop', [Component.text('Desktop versions coming soon →')]),
        ]),
        ul(classes: 'hero-benefits', [
          for (final benefit in ['Free to use', 'Works offline', 'Private by design', 'No account required'])
            li([
              span(attributes: {'aria-hidden': 'true'}, [Component.text('✓')]),
              Component.text(benefit),
            ]),
        ]),
      ]),
      div(classes: 'hero-visual', [
        div(classes: 'hero-orbit', attributes: {'aria-hidden': 'true'}, []),
        const PhoneMockup(
          image: '/images/screenshots_raw/6.png',
          alt: 'Digital Mala counter with virtual mala beads and round progress',
          eager: true,
        ),
        div(classes: 'practice-note', [
          span(classes: 'practice-note-icon', attributes: {'aria-hidden': 'true'}, [Component.text('✓')]),
          div([
            strong([Component.text('Your practice. Your space.')]),
            span([Component.text('Offline, ad-free, always yours.')]),
          ]),
        ]),
        span(classes: 'hero-visual-caption', [Component.text('One bead. One breath. One moment.')]),
      ]),
    ]),
  ]);
}
