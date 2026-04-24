import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Navbar extends StatelessComponent {
  const Navbar({super.key});

  @override
  Component build(BuildContext context) {
    return nav(classes: 'navbar', [
      div(classes: 'nav-logo', [
        div(classes: 'animate-slide-down', [
          span(classes: 'text-primary', [
            Component.text('ZEUS'),
            span(classes: 'text-secondary', [
              Component.text('.DEV'),
            ]),
          ]),
        ]),
      ]),
      div(classes: 'nav-links', [
        a(href: '#about', [Component.text('About')]),
        a(href: '#skills', [Component.text('Skills')]),
        a(href: '#writing', [Component.text('Writing')]),
        a(href: '#contact', [Component.text('Contact')]),
      ]),
      a(href: '#contact', classes: 'btn-primary', [Component.text('Let\'s talk →')]),
    ]);
  }
}
