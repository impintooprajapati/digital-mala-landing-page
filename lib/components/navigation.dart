import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Navigation extends StatefulComponent {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  bool isDrawerOpen = false;

  void _closeDrawer() => setState(() => isDrawerOpen = false);

  void _toggleDrawer() => setState(() => isDrawerOpen = !isDrawerOpen);

  @override
  Component build(BuildContext context) {
    return fragment([
      header(classes: 'navbar${isDrawerOpen ? ' drawer-open' : ''}', [
        div(classes: 'navbar-container', [
          a(href: '/', classes: 'nav-logo', onClick: _closeDrawer, [
            img(src: 'images/logo.png', alt: 'Digital Mala Logo'),
            span([text('Digital Mala')]),
          ]),

          nav(classes: 'nav-links', [
            a(href: '/#features', classes: 'nav-link', [text('Features')]),
            a(href: '/#screenshots', classes: 'nav-link', [text('Screenshots')]),
            a(href: '/#how-it-works', classes: 'nav-link', [text('How It Works')]),
            a(href: '/#reviews', classes: 'nav-link', [text('Reviews')]),
            a(href: '/changelog', classes: 'nav-link', [text("What's New")]),
            a(href: '/#faq', classes: 'nav-link', [text('FAQ')]),
            a(href: '/#download', classes: 'nav-btn', [text('Download Now')]),
          ]),

          button(
            classes: 'hamburger${isDrawerOpen ? ' open' : ''}',
            attributes: {
              'aria-label': isDrawerOpen ? 'Close menu' : 'Open menu',
              'aria-expanded': isDrawerOpen.toString(),
            },
            onClick: _toggleDrawer,
            [span([]), span([]), span([])],
          ),
        ]),
      ]),

      if (isDrawerOpen)
        button(
          classes: 'mobile-overlay',
          attributes: {'aria-label': 'Close menu'},
          onClick: _closeDrawer,
          [],
        ),

      div(classes: 'mobile-drawer${isDrawerOpen ? ' open' : ''}', [
        a(href: '/#features', classes: 'nav-link', onClick: _closeDrawer, [text('Features')]),
        a(href: '/#screenshots', classes: 'nav-link', onClick: _closeDrawer, [text('Screenshots')]),
        a(href: '/#how-it-works', classes: 'nav-link', onClick: _closeDrawer, [text('How It Works')]),
        a(href: '/#reviews', classes: 'nav-link', onClick: _closeDrawer, [text('Reviews')]),
        a(href: '/changelog', classes: 'nav-link', onClick: _closeDrawer, [text("What's New")]),
        a(href: '/#faq', classes: 'nav-link', onClick: _closeDrawer, [text('FAQ')]),
        a(href: '/#download', classes: 'nav-btn', onClick: _closeDrawer, [text('Download Now')]),
      ]),
    ]);
  }
}
