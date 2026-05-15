import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'constants/data.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(
    Document(
      title: MetaDataConfig.title,
      meta: {
        'description': MetaDataConfig.description,
        'viewport': 'width=device-width, initial-scale=1.0',
        'theme-color': '#09090b',
        'author': MetaDataConfig.author,
        'keywords': MetaDataConfig.keywords,
        'og:title': MetaDataConfig.title,
        'og:description': MetaDataConfig.description,
        'og:image': MetaDataConfig.ogImage,
        'og:type': 'website',
        'twitter:card': 'summary_large_image',
        'twitter:title': MetaDataConfig.title,
        'twitter:description': MetaDataConfig.description,
        'twitter:image': MetaDataConfig.ogImage,
        'twitter:site': MetaDataConfig.twitterHandle,
        'twitter:creator': MetaDataConfig.twitterHandle,
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
        link(rel: 'icon', href: '/favicon.ico'),
        link(rel: 'manifest', href: '/manifest.json'),
        link(rel: 'stylesheet', href: '/styles.css'),
        script(src: '/script.js'),
      ],
      body: App(),
    ),
  );
}
