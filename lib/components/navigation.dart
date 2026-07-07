import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Navigation extends StatefulComponent {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  bool isDrawerOpen = false;

  @override
  Component build(BuildContext context) {
    return header(classes: 'navbar', [
      div(classes: 'navbar-container', [
        // Brand Logo & Text
        a(href: '/', classes: 'nav-logo', [
          img(src: 'images/logo.png', alt: 'Digital Mala Logo'),
          span([text('Digital Mala')]),
        ]),

        // Desktop Links
        nav(classes: 'nav-links', [
          a(href: '/#features', classes: 'nav-link', [text('Features')]),
          a(href: '/#screenshots', classes: 'nav-link', [text('Screenshots')]),
          a(href: '/#how-it-works', classes: 'nav-link', [text('How It Works')]),
          a(href: '/#faq', classes: 'nav-link', [text('FAQ')]),
          a(href: '/#download', classes: 'nav-btn', [text('Download Now')]),
        ]),

        // Mobile Hamburger menu toggle
        button(
          classes: 'hamburger${isDrawerOpen ? ' open' : ''}',
          onClick: () {
            setState(() {
              isDrawerOpen = !isDrawerOpen;
            });
          },
          [
            span([]),
            span([]),
            span([]),
          ],
        ),

        // Mobile Drawer Overlay
        div(classes: 'mobile-drawer${isDrawerOpen ? ' open' : ''}', [
          a(
            href: '/#features',
            classes: 'nav-link',
            onClick: () => setState(() => isDrawerOpen = false),
            [text('Features')],
          ),
          a(
            href: '/#screenshots',
            classes: 'nav-link',
            onClick: () => setState(() => isDrawerOpen = false),
            [text('Screenshots')],
          ),
          a(
            href: '/#how-it-works',
            classes: 'nav-link',
            onClick: () => setState(() => isDrawerOpen = false),
            [text('How It Works')],
          ),
          a(
            href: '/#faq',
            classes: 'nav-link',
            onClick: () => setState(() => isDrawerOpen = false),
            [text('FAQ')],
          ),
          a(
            href: '/#download',
            classes: 'nav-btn',
            onClick: () => setState(() => isDrawerOpen = false),
            [text('Download Now')],
          ),
        ]),
      ]),
    ]);
  }
}
