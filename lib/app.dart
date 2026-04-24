import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'pages/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      div(classes: 'cursor-ring', id: 'cursor-ring', []),
      div(classes: 'cursor-dot', id: 'cursor-dot', []),
      Home(),
    ]);
  }
}
