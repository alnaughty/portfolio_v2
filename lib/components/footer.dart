import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/data.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      div(classes: 'footer-icons', [
        a(href: PersonalInfo.github, target: Target.blank, [
          RawText(
            '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 22v-4a4.8 4.8 0 0 0-1-3.02c3.14-.35 6.5-1.4 6.5-7a4.6 4.6 0 0 0-1.39-3.2 4.2 4.2 0 0 0-.14-3.2s-1.12-.35-3.5 1.25a12.1 12.1 0 0 0-6.2 0C6.62 3.25 5.5 3.6 5.5 3.6a4.2 4.2 0 0 0-.14 3.2A4.6 4.6 0 0 0 4 12.8c0 5.58 3.36 6.63 6.4 7-.34.3-.65.8-.75 1.5-.2.1-.8.3-2.2-.8-.4-.6-1-.9-1-.9-.6-.1-.1-.1-.1-.1.7.1 1.2.6 1.2.6.6 1.1 1.8 1.1 2.8.8v2.5"/><path d="M9 21c-3 1-5-1-5-1"/></svg>',
          ),
        ]),
        a(href: PersonalInfo.linkedin, target: Target.blank, [
          RawText(
            '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><rect width="4" height="12" x="2" y="9"/><circle cx="4" cy="4" r="2"/></svg>',
          ),
        ]),
      ]),
      p(classes: 'footer-copy', [
        Component.text('Designed & Built by ${PersonalInfo.name}'),
      ]),
    ]);
  }
}
