import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'hero fade-up', id: 'hero', [
      div(classes: 'hero-content', [
        div(classes: 'availability-tag', [
          span(classes: 'pulse-dot', []),
          Component.text('Available for new projects'),
        ]),
        h1([
          Component.text('Building apps that work '),
          br(),
          em([Component.text('everywhere')]),
        ]),
        p(classes: 'hero-subtext', [
          Component.text(
            'Flutter developer crafting cross-platform mobile experiences — backed by solid Laravel APIs and an eye for design in Figma.',
          ),
        ]),
        div(classes: 'hero-actions', [
          a(href: '#skills', classes: 'btn-primary', [Component.text('Explore my stack →')]),
          a(href: '#writing', classes: 'btn-ghost', [Component.text('Read my writing')]),
        ]),
      ]),

      div(classes: 'hero-scene', id: 'scene', [
        // Phone Mockup (el0)
        div(classes: 'scene-el el0', id: 'el0', [
          div(classes: 'phone-notch', []),
          div(classes: 'phone-thumb', [div(classes: 'phone-thumb-inner', [])]),
          div(classes: 'phone-bar w80', []),
          div(classes: 'phone-bar w60', []),
          div(classes: 'phone-bar w40', []),
          div(classes: 'phone-dots', [
            div(classes: 'p-dot', []),
            div(classes: 'p-dot active', []),
            div(classes: 'p-dot', []),
          ]),
        ]),

        // Profile Card (el1)
        div(classes: 'scene-el el1', id: 'el1', [
          div(classes: 'profile-header', [
            div(classes: 'avatar-circle', []),
            div(classes: 'profile-lines', [
              div(classes: 'p-line w80', []),
              div(classes: 'p-line w60', []),
            ]),
          ]),
          div(classes: 'profile-tags', [
            div(classes: 'p-tag', [Component.text('Flutter')]),
            div(classes: 'p-tag', [Component.text('Laravel')]),
          ]),
        ]),

        // Analytics Widget (el2)
        div(classes: 'scene-el el2', id: 'el2', [
          div(classes: 'stat-label', [Component.text('APP SESSIONS')]),
          div(classes: 'stat-value', [Component.text('4,821')]),
          div(classes: 'stat-bar-track', [div(classes: 'stat-bar-fill', [])]),
          div(classes: 'stat-growth', [
            Component.text('vs last week '),
            span(classes: 'growth-badge', [Component.text('+12%')]),
          ]),
        ]),

        // Dot Grid Texture (el3)
        div(classes: 'scene-el el3', id: 'el3', [
          div(classes: 'dot-grid', [
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
            span([]),
          ]),
        ]),

        // Flutter Logo (el4)
        div(classes: 'scene-el el4', id: 'el4', [
          // Using RawText for raw html which is safest for inline SVG
          RawText('''
            <svg viewBox="0 0 28 28" width="28" height="28" class="flutter-logo">
              <path d="M14 4L7 10l7 6 7-6-7-6z" fill="#54c5f8" opacity="0.7"/>
              <path d="M7 10l7 6v8l-7-8v-6z" fill="#01579b" opacity="0.85"/>
              <path d="M21 10l-7 6v8l7-8v-6z" fill="#29b6f6" opacity="0.7"/>
            </svg>
          '''),
        ]),

        // Orbit Ring (ring)
        div(classes: 'scene-el ring', id: 'ring', [div(classes: 'ring-node', [])]),
      ]),
    ]);
  }
}
