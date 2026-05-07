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
      title: 'Zeus Cajurao — Senior Flutter Developer',
      meta: {
        'description':
            'Senior Flutter developer crafting high-performance cross-platform apps. Expert in Dart, Firebase, Laravel and exploring Web3 and game dev.',
        'viewport': 'width=device-width, initial-scale=1.0',
        'theme-color': '#09090b',
      },
      head: [
        link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
        link(
          rel: 'preconnect',
          href: 'https://fonts.gstatic.com',
          attributes: {'crossorigin': ''},
        ),
        link(
          href:
              'https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap',
          rel: 'stylesheet',
        ),
        link(rel: 'stylesheet', href: '/styles.css'),
        script(src: '/script.js'),
      ],
      body: App(),
    ),
  );
}
