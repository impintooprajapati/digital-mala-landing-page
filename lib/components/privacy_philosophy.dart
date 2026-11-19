import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class PrivacyPhilosophy extends StatelessComponent {
  const PrivacyPhilosophy({super.key});

  @override
  Component build(BuildContext context) => section(
    id: 'privacy',
    classes: 'privacy-manifesto-section',
    [
      div(classes: 'container', [
        div(classes: 'privacy-header', [
          span(classes: 'editorial-eyebrow editorial-eyebrow-gold', [Component.text('Uncompromising Privacy')]),
          h2(classes: 'privacy-headline', [
            Component.text('Your data '),
            span(classes: 'editorial-gold', [Component.text('stays yours.')]),
          ]),
          p(classes: 'privacy-lead', [
            Component.text(
              'A spiritual practice is deeply personal. We believe your sacred sadhana, prayers, and personal reflections should remain strictly between you and the Divine — never tracked, analyzed, or stored in the cloud.',
            ),
          ]),
        ]),

        div(classes: 'privacy-pillars-grid', [
          div(classes: 'privacy-pillar-card', [
            div(classes: 'pillar-icon-box', attributes: {'aria-hidden': 'true'}, [
              RawText(
                '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>',
              ),
            ]),
            h3([Component.text('100% Offline-First')]),
            p([
              Component.text(
                'Digital Mala works entirely without an internet connection. Every bead count, daily streak, and custom mantra is processed on your device only.',
              ),
            ]),
            span(classes: 'pillar-badge', [Component.text('Zero Internet Required')]),
          ]),

          div(classes: 'privacy-pillar-card', [
            div(classes: 'pillar-icon-box', attributes: {'aria-hidden': 'true'}, [
              RawText(
                '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/><line x1="18" y1="8" x2="23" y2="13"/><line x1="23" y1="8" x2="18" y2="13"/></svg>',
              ),
            ]),
            h3([Component.text('No Accounts or Logins')]),
            p([
              Component.text(
                'No email signups, no passwords, no social logins, and no identity profiles. Open the app and begin chanting immediately in complete anonymity.',
              ),
            ]),
            span(classes: 'pillar-badge', [Component.text('Zero Credentials')]),
          ]),

          div(classes: 'privacy-pillar-card', [
            div(classes: 'pillar-icon-box', attributes: {'aria-hidden': 'true'}, [
              RawText(
                '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="18" height="18" rx="2" ry="2"/><line x1="9" y1="9" x2="15" y2="15"/><line x1="15" y1="9" x2="9" y2="15"/></svg>',
              ),
            ]),
            h3([Component.text('Zero Ads & Zero Telemetry')]),
            p([
              Component.text(
                'We embed zero advertising networks, tracking pixels, or third-party behavioral analytics. Your spiritual time is protected from commercial intrusion.',
              ),
            ]),
            span(classes: 'pillar-badge', [Component.text('Ad-Free Forever')]),
          ]),

          div(classes: 'privacy-pillar-card', [
            div(classes: 'pillar-icon-box', attributes: {'aria-hidden': 'true'}, [
              RawText(
                '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" y1="15" x2="12" y2="3"/></svg>',
              ),
            ]),
            h3([Component.text('Complete Local Sovereignty')]),
            p([
              Component.text(
                'Your chanting logs stay in an encrypted local database. Export your complete data as a JSON file or generate beautiful PDF sadhana reports whenever you wish.',
              ),
            ]),
            span(classes: 'pillar-badge', [Component.text('Local Backup & Export')]),
          ]),
        ]),
      ]),
    ],
  );
}
