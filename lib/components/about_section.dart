import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AboutSection extends StatelessComponent {
  const AboutSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'about fade-up', id: 'about', [
      div(classes: 'section-label', [Component.text('01 — About')]),
      div(classes: 'about-grid', [
        div(classes: 'about-Component.text', [
          p([
            Component.text('I\'m a '),
            strong([Component.text('Flutter developer')]),
            Component.text(
              ' who builds cross-platform apps for iOS and Android — from polished UI to production-ready backends with ',
            ),
            strong([Component.text('Laravel')]),
            Component.text('.'),
          ]),
          p([
            Component.text('I also design in '),
            strong([Component.text('Figma')]),
            Component.text(
              ', which means I can own the product from wireframes to shipped app. No handoff friction, just clean code that matches the vision.',
            ),
          ]),
          p([
            Component.text(
              'My Python background from university keeps me curious about automation and data — always expanding the toolkit.',
            ),
          ]),
        ]),
        div(classes: 'about-cards', [
          div(classes: 'info-card', [
            div(classes: 'info-label', [Component.text('LOCATION')]),
            div(classes: 'info-val', [Component.text('Metro Manila, PH 🇵🇭')]),
          ]),
          div(classes: 'info-card', [
            div(classes: 'info-label', [Component.text('FAV STACK')]),
            div(classes: 'info-val', [Component.text('Flutter - Laravel - Figma')]),
          ]),
          div(classes: 'info-card', [
            div(classes: 'info-label', [Component.text('PLATFORMS')]),
            div(classes: 'info-val', [Component.text('iOS - Android - Web')]),
          ]),
          div(classes: 'info-card', [
            div(classes: 'info-label', [Component.text('STATUS')]),
            div(classes: 'info-val status-open', [Component.text('Open to opportunities')]),
          ]),
        ]),
      ]),
    ]);
  }
}
