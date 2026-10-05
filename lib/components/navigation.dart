import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Navigation extends StatefulComponent {
  final String contentHref;
  const Navigation({this.contentHref = '/#main-content', super.key});
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  bool isDrawerOpen = false;
  void _closeDrawer() => setState(() => isDrawerOpen = false);
  static const links = [
    ('Features', '/#features'),
    ('How It Works', '/#how-it-works'),
    ('Benefits', '/#why-us'),
    ('Reviews', '/#reviews'),
    ('FAQ', '/#faq'),
  ];
  @override
  Component build(BuildContext context) => Component.fragment([
    a(href: component.contentHref, classes: 'skip-link', [Component.text('Skip to content')]),
    header(classes: 'navbar${isDrawerOpen ? ' drawer-open' : ''}', [
      div(classes: 'container navbar-container', [
        a(
          href: '/',
          classes: 'nav-logo',
          events: {'click': (event) => _closeDrawer()},
          [
            img(src: '/images/logo.png', alt: '', attributes: {'width': '42', 'height': '42'}),
            span([Component.text('Digital Mala')]),
          ],
        ),
        nav(
          classes: 'nav-links',
          attributes: {'aria-label': 'Primary navigation'},
          [
            for (final link in links) a(href: link.$2, classes: 'nav-link', [Component.text(link.$1)]),
          ],
        ),
        a(href: '/#download', classes: 'nav-btn desktop-download', [Component.text('Download App')]),
        button(
          classes: 'hamburger${isDrawerOpen ? ' open' : ''}',
          attributes: {
            'aria-label': isDrawerOpen ? 'Close menu' : 'Open menu',
            'aria-expanded': isDrawerOpen.toString(),
            'aria-controls': 'mobile-navigation',
          },
          onClick: () => setState(() => isDrawerOpen = !isDrawerOpen),
          [span([]), span([]), span([])],
        ),
      ]),
    ]),
    if (isDrawerOpen)
      button(
        classes: 'mobile-overlay',
        attributes: {'aria-label': 'Close navigation overlay', 'tabindex': '-1'},
        events: {'click': (event) => _closeDrawer()},
        [],
      ),
    nav(
      id: 'mobile-navigation',
      classes: 'mobile-drawer${isDrawerOpen ? ' open' : ''}',
      attributes: {'aria-label': 'Mobile navigation', 'aria-hidden': (!isDrawerOpen).toString()},
      [
        for (final link in links)
          a(
            href: link.$2,
            classes: 'nav-link',
            events: {'click': (event) => _closeDrawer()},
            [Component.text(link.$1)],
          ),
        a(
          href: '/#screenshots',
          classes: 'nav-link',
          events: {'click': (event) => _closeDrawer()},
          [Component.text('Explore the App')],
        ),
        a(
          href: '/changelog',
          classes: 'nav-link',
          events: {'click': (event) => _closeDrawer()},
          [Component.text("What's New")],
        ),
        a(
          href: '/#download',
          classes: 'nav-btn',
          events: {'click': (event) => _closeDrawer()},
          [Component.text('Download App')],
        ),
      ],
    ),
  ]);
}
