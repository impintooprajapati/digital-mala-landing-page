import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'phone_mockup.dart';

/// 1. Digital Jaap Feature Showcase: Tactile beads, 4 sacred malas, spacebar counting
class DigitalJaapShowcase extends StatelessComponent {
  const DigitalJaapShowcase({super.key});

  @override
  Component build(BuildContext context) => section(
    id: 'digital-jaap',
    classes: 'showcase-feature-section feature-jaap',
    [
      div(classes: 'container showcase-feature-grid', [
        div(classes: 'showcase-copy', [
          span(classes: 'editorial-eyebrow editorial-eyebrow-gold', [Component.text('Digital Jaap')]),
          h2(classes: 'showcase-title', [
            Component.text('The tactile soul of chanting.'),
          ]),
          p(classes: 'showcase-desc', [
            Component.text(
              'Count each sacred mantra with seamless touch feedback, realistic bead momentum, and real-time round indicators. On desktop, keep your hands rested on your desk and count with a gentle tap of the Spacebar.',
            ),
          ]),
          div(classes: 'mala-styles-selector', [
            span(classes: 'mala-styles-label', [Component.text('Authentic Mala Bead Variations')]),
            div(classes: 'mala-styles-grid', [
              div(classes: 'mala-style-chip active', [
                span(classes: 'bead-dot bead-rudraksha', attributes: {'aria-hidden': 'true'}, []),
                div([
                  strong([Component.text('Rudraksha')]),
                  span([Component.text('Lord Shiva & Inner Fire')]),
                ]),
              ]),
              div(classes: 'mala-style-chip', [
                span(classes: 'bead-dot bead-tulsi', attributes: {'aria-hidden': 'true'}, []),
                div([
                  strong([Component.text('Tulsi')]),
                  span([Component.text('Lord Vishnu & Purity')]),
                ]),
              ]),
              div(classes: 'mala-style-chip', [
                span(classes: 'bead-dot bead-sphatik', attributes: {'aria-hidden': 'true'}, []),
                div([
                  strong([Component.text('Sphatik')]),
                  span([Component.text('Quartz Crystal & Clarity')]),
                ]),
              ]),
              div(classes: 'mala-style-chip', [
                span(classes: 'bead-dot bead-moti', attributes: {'aria-hidden': 'true'}, []),
                div([
                  strong([Component.text('Moti')]),
                  span([Component.text('Pearl & Calm Mind')]),
                ]),
              ]),
            ]),
          ]),
          div(classes: 'showcase-feature-bullets', [
            div(classes: 'bullet-item', [
              span(classes: 'bullet-icon', attributes: {'aria-hidden': 'true'}, [Component.text('✓')]),
              span([Component.text('Tactile Haptics on Mobile · Gentle vibration per bead')]),
            ]),
            div(classes: 'bullet-item', [
              span(classes: 'bullet-icon', attributes: {'aria-hidden': 'true'}, [Component.text('✓')]),
              span([Component.text('Spacebar / Click Counting on macOS, Windows & Linux')]),
            ]),
            div(classes: 'bullet-item', [
              span(classes: 'bullet-icon', attributes: {'aria-hidden': 'true'}, [Component.text('✓')]),
              span([Component.text('Automatic 108 Bead Completion Gong & Chime')]),
            ]),
          ]),
        ]),

        div(classes: 'showcase-visual showcase-visual-centered', [
          div(classes: 'device-ambient-glow', attributes: {'aria-hidden': 'true'}, []),
          const PhoneMockup(
            image: '/images/screenshots_raw/m4.png',
            alt: 'Digital Mala sacred jap counter with touch beads and real-time mantra counter',
          ),
        ]),
      ]),
    ],
  );
}

/// 2. Sankalp Tracker Feature Showcase: Spiritual Vows & Milestones
class SankalpShowcase extends StatelessComponent {
  const SankalpShowcase({super.key});

  @override
  Component build(BuildContext context) => section(
    id: 'sankalp-tracker',
    classes: 'showcase-feature-section feature-sankalp section-alt-bg',
    [
      div(classes: 'container showcase-feature-grid showcase-reverse', [
        div(classes: 'showcase-visual showcase-visual-centered', [
          div(classes: 'device-ambient-glow', attributes: {'aria-hidden': 'true'}, []),
          const PhoneMockup(
            image: '/images/screenshots_raw/m4.png',
            alt: 'Digital Mala sankalp tracker for taking sacred vows and tracking daily completion progress',
          ),
        ]),

        div(classes: 'showcase-copy', [
          span(classes: 'editorial-eyebrow', [Component.text('Sacred Intentions')]),
          h2(classes: 'showcase-title', [
            Component.text('Commitment made sacred.'),
          ]),
          p(classes: 'showcase-desc', [
            Component.text(
              'A Sankalp is a solemn spiritual vow taken from the depths of your heart. Whether taking a 21-day dedication, a 100,000 Mahamrityunjaya Jaap pledge, or a daily 16-mala discipline, Digital Mala helps you honor your word with clarity.',
            ),
          ]),
          div(classes: 'sankalp-metrics-grid', [
            div(classes: 'sankalp-metric-card', [
              span(classes: 'metric-value', [Component.text('108')]),
              span(classes: 'metric-label', [Component.text('Daily Bead Target')]),
              div(classes: 'metric-progress-bar', [
                div(classes: 'metric-progress-fill', attributes: {'style': 'width: 100%'}, []),
              ]),
            ]),
            div(classes: 'sankalp-metric-card', [
              span(classes: 'metric-value', [Component.text('100,000')]),
              span(classes: 'metric-label', [Component.text('Lifelong Sankalp Goal')]),
              div(classes: 'metric-progress-bar', [
                div(classes: 'metric-progress-fill', attributes: {'style': 'width: 68%'}, []),
              ]),
            ]),
          ]),
          div(classes: 'showcase-feature-bullets', [
            div(classes: 'bullet-item', [
              span(classes: 'bullet-icon', attributes: {'aria-hidden': 'true'}, [Component.text('✓')]),
              span([Component.text('Set custom timeframes: 21 Days, 40 Days, 108 Days, or Open')]),
            ]),
            div(classes: 'bullet-item', [
              span(classes: 'bullet-icon', attributes: {'aria-hidden': 'true'}, [Component.text('✓')]),
              span([Component.text('Visual milestone rings & percentage progress')]),
            ]),
          ]),
        ]),
      ]),
    ],
  );
}

/// 3. Sadhana Heatmap & Streaks Showcase: Consistency you can see
class HeatmapShowcase extends StatelessComponent {
  const HeatmapShowcase({super.key});

  @override
  Component build(BuildContext context) => section(
    id: 'sadhana-heatmap',
    classes: 'showcase-feature-section feature-heatmap',
    [
      div(classes: 'container showcase-feature-grid', [
        div(classes: 'showcase-copy', [
          span(classes: 'editorial-eyebrow editorial-eyebrow-gold', [Component.text('Sadhana Analytics')]),
          h2(classes: 'showcase-title', [
            Component.text('Consistency you can see.'),
          ]),
          p(classes: 'showcase-desc', [
            Component.text(
              'Inspired by Apple Health and GitHub activity visualizations, the year-round Sadhana Heatmap illuminates every single day of practice. Watch your spiritual dedication build into an unbroken tapestry of devotion.',
            ),
          ]),
          div(classes: 'heatmap-stats-strip', [
            div(classes: 'stat-pill', [
              strong([Component.text('365')]),
              span([Component.text('Days Visualized')]),
            ]),
            div(classes: 'stat-pill', [
              strong([Component.text('1,248')]),
              span([Component.text('Total Malas Chanted')]),
            ]),
            div(classes: 'stat-pill', [
              strong([Component.text('48 Days')]),
              span([Component.text('Active Daily Streak')]),
            ]),
          ]),
          p(classes: 'showcase-desc-sub', [
            Component.text(
              'Detailed session breakdowns by time of day, mantra popularity, and daily completion timestamps help you understand and deepen your personal rhythm.',
            ),
          ]),
        ]),

        div(classes: 'showcase-visual showcase-visual-centered', [
          div(classes: 'device-ambient-glow', attributes: {'aria-hidden': 'true'}, []),
          const PhoneMockup(
            image: '/images/screenshots_raw/m5.png',
            alt: 'Digital Mala sadhana insights and activity heatmap showing year-round spiritual consistency',
          ),
        ]),
      ]),
    ],
  );
}

/// 4. Guided Pranayama Showcase: Peaceful breathing rhythms
class PranayamaShowcase extends StatelessComponent {
  const PranayamaShowcase({super.key});

  @override
  Component build(BuildContext context) => section(
    id: 'guided-pranayama',
    classes: 'showcase-feature-section feature-pranayama section-alt-bg',
    [
      div(classes: 'container showcase-feature-grid showcase-reverse', [
        div(classes: 'showcase-visual showcase-visual-centered', [
          div(classes: 'device-ambient-glow', attributes: {'aria-hidden': 'true'}, []),
          const PhoneMockup(
            image: '/images/screenshots_raw/m8.png',
            alt: 'Digital Mala pranayama breathwork guided rhythms and serene breathing visualizer',
          ),
        ]),

        div(classes: 'showcase-copy', [
          span(classes: 'editorial-eyebrow', [Component.text('Mindful Breathing')]),
          h2(classes: 'showcase-title', [
            Component.text('Stillness before sound.'),
          ]),
          p(classes: 'showcase-desc', [
            Component.text(
              'Ground your mind and still your thoughts before beginning your Jaap. Digital Mala includes calibrated yogic breathing patterns accompanied by soothing meditative soundscapes.',
            ),
          ]),
          div(classes: 'pranayama-rhythms-grid', [
            div(classes: 'rhythm-card', [
              div(classes: 'rhythm-badge', [Component.text('4 · 4 · 4 · 4')]),
              strong([Component.text('Box Breathing (Sama Vritti)')]),
              p([Component.text('Deep nervous system regulation and laser mental focus.')]),
            ]),
            div(classes: 'rhythm-card', [
              div(classes: 'rhythm-badge', [Component.text('4 · 7 · 8')]),
              strong([Component.text('Relaxing Breath (Pranayama)')]),
              p([Component.text('Soothes evening anxiety and prepares the heart for tranquil meditation.')]),
            ]),
            div(classes: 'rhythm-card', [
              div(classes: 'rhythm-badge', [Component.text('So · Hum')]),
              strong([Component.text('Natural Breath Awareness')]),
              p([Component.text('Spontaneous breath observation synchronized with sacred sound.')]),
            ]),
          ]),
          div(classes: 'soundscapes-note', [
            span(classes: 'sound-icon', attributes: {'aria-hidden': 'true'}, [Component.text('🎵')]),
            div([
              strong([Component.text('Ambient Meditative Soundscapes: ')]),
              Component.text('OM Drone (136.1 Hz), Tibetan Singing Bowls (432 Hz), and temple bells.'),
            ]),
          ]),
        ]),
      ]),
    ],
  );
}

/// 5. History & Insights Showcase: Practice records & devotee setup
class HistoryShowcase extends StatelessComponent {
  const HistoryShowcase({super.key});

  @override
  Component build(BuildContext context) => section(
    id: 'history-insights',
    classes: 'showcase-feature-section feature-history',
    [
      div(classes: 'container showcase-feature-grid', [
        div(classes: 'showcase-copy', [
          span(classes: 'editorial-eyebrow editorial-eyebrow-gold', [Component.text('Records & Milestones')]),
          h2(classes: 'showcase-title', [
            Component.text('Your spiritual journey, preserved.'),
          ]),
          p(classes: 'showcase-desc', [
            Component.text(
              'Every prayer matters. Digital Mala maintains a clean, organized record of your chanting sessions, rounds completed, and total practice duration across all your chosen mantras.',
            ),
          ]),
          div(classes: 'history-cards-grid', [
            div(classes: 'history-feature-card', [
              strong([Component.text('Multi-Mantra Library')]),
              p([
                Component.text(
                  'Switch between Maha Mrityunjaya, Gayatri Mantra, Hare Krishna Maha Mantra, Om Namah Shivaya, or your personal guru mantra.',
                ),
              ]),
            ]),
            div(classes: 'history-feature-card', [
              strong([Component.text('Brahma Muhurta Alerts')]),
              p([
                Component.text(
                  'Calculates the sacred pre-dawn window (96 minutes before sunrise) based on your device location, 100% offline.',
                ),
              ]),
            ]),
            div(classes: 'history-feature-card', [
              strong([Component.text('Encrypted Local Backup & PDF')]),
              p([
                Component.text(
                  'Export your spiritual logs at any time as JSON or print an elegant PDF sadhana journal.',
                ),
              ]),
            ]),
          ]),
        ]),

        div(classes: 'showcase-visual showcase-visual-centered', [
          div(classes: 'device-ambient-glow', attributes: {'aria-hidden': 'true'}, []),
          const PhoneMockup(
            image: '/images/screenshots_raw/m3.png',
            alt: 'Digital Mala devotee profile, practice statistics and sadhana history',
          ),
        ]),
      ]),
    ],
  );
}
