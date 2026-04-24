import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'footer', [
      div(classes: 'f-left', [Component.text('© 2025 zeuscajurao.dev')]),
      div(classes: 'f-right', [Component.text('Flutter · Laravel · Figma')]),
    ]);
  }
}
