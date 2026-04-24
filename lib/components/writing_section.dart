import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class WritingSection extends StatelessComponent {
  const WritingSection({super.key});

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      section(classes: 'writing fade-up', id: 'writing', [
        div(classes: 'section-label', [Component.text('03 — Writing')]),
        div(classes: 'articles-box', [
          a(href: '#article-1', classes: 'article-row', [
            div(classes: 'art-date', [Component.text('Apr 2024')]),
            div(classes: 'art-title', [Component.text('Why Flutter is still my go-to for cross-platform in 2024')]),
            div(classes: 'art-cat', [
              Component.text('Flutter '),
              span(classes: 'arr', [Component.text('→')]),
            ]),
          ]),
          a(href: '#article-2', classes: 'article-row', [
            div(classes: 'art-date', [Component.text('Mar 2024')]),
            div(classes: 'art-title', [Component.text('Connecting Flutter to a Laravel API: a practical guide')]),
            div(classes: 'art-cat', [
              Component.text('Laravel '),
              span(classes: 'arr', [Component.text('→')]),
            ]),
          ]),
          a(href: '#article-3', classes: 'article-row', [
            div(classes: 'art-date', [Component.text('Feb 2024')]),
            div(classes: 'art-title', [Component.text('Designing in Figma before writing a single line of Flutter')]),
            div(classes: 'art-cat', [
              Component.text('UI/UX '),
              span(classes: 'arr', [Component.text('→')]),
            ]),
          ]),
          a(href: '#article-4', classes: 'article-row', [
            div(classes: 'art-date', [Component.text('Jan 2024')]),
            div(classes: 'art-title', [Component.text('State management in Flutter: what I actually use and why')]),
            div(classes: 'art-cat', [
              Component.text('State '),
              span(classes: 'arr', [Component.text('→')]),
            ]),
          ]),
        ]),
      ]),

      // Modals
      div(id: 'article-1', classes: 'modal', [
        a(href: '#writing', classes: 'modal-backdrop', []),
        div(classes: 'modal-content', [
          a(href: '#writing', classes: 'modal-close', [Component.text('×')]),
          h3(classes: 'modal-title', [Component.text('Why Flutter is still my go-to for cross-platform in 2024')]),
          p(classes: 'modal-body', [
            Component.text(
              'Flutter enables me to write code once and deploy across iOS, Android, and web with high performance and a native-like feel. The hot-reload feature drastically speeds up development, and the robust ecosystem of packages covers almost every need. It simply provides the best developer experience compared to alternatives like React Native.',
            ),
          ]),
        ]),
      ]),

      div(id: 'article-2', classes: 'modal', [
        a(href: '#writing', classes: 'modal-backdrop', []),
        div(classes: 'modal-content', [
          a(href: '#writing', classes: 'modal-close', [Component.text('×')]),
          h3(classes: 'modal-title', [Component.text('Connecting Flutter to a Laravel API: a practical guide')]),
          p(classes: 'modal-body', [
            Component.text(
              'Laravel provides a robust and elegant backend. Connecting Flutter to Laravel is seamless using RESTful APIs. I typically use packages like `http` or `dio` in Flutter, combined with Laravel Sanctum for secure API authentication. Proper error handling and data models using freezed and json_serializable make the integration bulletproof.',
            ),
          ]),
        ]),
      ]),

      div(id: 'article-3', classes: 'modal', [
        a(href: '#writing', classes: 'modal-backdrop', []),
        div(classes: 'modal-content', [
          a(href: '#writing', classes: 'modal-close', [Component.text('×')]),
          h3(classes: 'modal-title', [Component.text('Designing in Figma before writing a single line of Flutter')]),
          p(classes: 'modal-body', [
            Component.text(
              'Prototyping in Figma saves hours of coding time. It allows me to iterate on UX/UI rapidly, establish a cohesive design system with reusable tokens, and share the vision with stakeholders before committing to code structure in Flutter. It translates smoothly to Flutter widgets once the layout is finalized.',
            ),
          ]),
        ]),
      ]),

      div(id: 'article-4', classes: 'modal', [
        a(href: '#writing', classes: 'modal-backdrop', []),
        div(classes: 'modal-content', [
          a(href: '#writing', classes: 'modal-close', [Component.text('×')]),
          h3(classes: 'modal-title', [Component.text('State management in Flutter: what I actually use and why')]),
          p(classes: 'modal-body', [
            Component.text(
              'While Provider is great for simple apps, I often reach for Riverpod or Bloc for complex applications. Riverpod offers compile-time safety and prevents common Provider errors, while Bloc excels in highly event-driven applications with rigid state transitions. They both provide better separation of concerns, scalability, and testability for production-level code.',
            ),
          ]),
        ]),
      ]),
    ]);
  }
}
