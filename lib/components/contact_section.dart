import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'contact fade-up', id: 'contact', [
      div(classes: 'section-label', [Component.text('04 — Contact')]),
      div(classes: 'contact-card', [
        h2([Component.text('Have an app idea?'), br(), Component.text('Let\'s make it real.')]),
        p([
          Component.text(
            'Whether it\'s a cross-platform app, a backend API, or you need someone who can do both — I\'d love to hear about what you\'re building.',
          ),
        ]),
        div(classes: 'contact-links', [
          a(href: 'mailto:official.zeuscajurao@gmail.com', target: Target.blank, classes: 'c-link', [
            RawText(
              '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="20" height="16" x="2" y="4" rx="2"/><path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"/></svg>',
            ),
            Component.text(' Email me'),
          ]),
          a(href: 'https://www.linkedin.com/in/zeus-cajurao-600262243/', target: Target.blank, classes: 'c-link', [
            RawText(
              '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><rect width="4" height="12" x="2" y="9"/><circle cx="4" cy="4" r="2"/></svg>',
            ),
            Component.text(' LinkedIn'),
          ]),
          a(href: 'https://github.com/alnaughty', target: Target.blank, classes: 'c-link', [
            RawText(
              '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 22v-4a4.8 4.8 0 0 0-1-3.02c3.14-.35 6.5-1.4 6.5-7a4.6 4.6 0 0 0-1.39-3.2 4.2 4.2 0 0 0-.14-3.2s-1.12-.35-3.5 1.25a12.1 12.1 0 0 0-6.2 0C6.62 3.25 5.5 3.6 5.5 3.6a4.2 4.2 0 0 0-.14 3.2A4.6 4.6 0 0 0 4 12.8c0 5.58 3.36 6.63 6.4 7-.34.3-.65.8-.75 1.5-.2.1-.8.3-2.2-.8-.4-.6-1-.9-1-.9-.6-.1-.1-.1-.1-.1.7.1 1.2.6 1.2.6.6 1.1 1.8 1.1 2.8.8v2.5"/><path d="M9 21c-3 1-5-1-5-1"/></svg>',
            ),
            Component.text(' Github'),
          ]),
          a(href: '#', classes: 'c-link', [
            RawText(
              '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14.5 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7.5L14.5 2z"/><polyline points="14 2 14 8 20 8"/><line x1="16" x2="8" y1="13" y2="13"/><line x1="16" x2="8" y1="17" y2="17"/><line x1="10" x2="8" y1="9" y2="9"/></svg>',
            ),
            Component.text(' Resume'),
          ]),
        ]),
      ]),
    ]);
  }
}
