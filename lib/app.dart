import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'pages/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      // Fixed atom canvas background
      Component.element(tag: 'canvas', id: 'atom-canvas', children: []),

      // Mobile menu overlay
      div(id: 'mobile-menu', classes: 'mobile-menu', [
        a(href: '#about', [Component.text('About')]),
        a(href: '#experience', [Component.text('Experience')]),
        a(href: '#projects', [Component.text('Projects')]),
        a(href: '#contact', [Component.text('Contact')]),
      ]),

      // Main app
      Home(),
    ]);
  }
}
