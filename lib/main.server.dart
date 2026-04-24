import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(
    Document(
      title: 'Zeus Cajurao - Flutter Developer',
      head: [
        link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
        link(rel: 'preconnect', href: 'https://fonts.gstatic.com', attributes: {'crossorigin': ''}),
        link(
          href:
              'https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=DM+Sans:wght@300;400;500&family=DM+Mono:wght@400;500&display=swap',
          rel: 'stylesheet',
        ),
        link(rel: 'stylesheet', href: '/styles.css'),
        script(
          src: '/script.js',
        ),
      ],
      body: App(),
    ),
  );
}
