import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'package:portfolio/data/content/site_content.dart';
import 'package:portfolio/theme/global_styles.dart';
import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/pages/home_page.dart';

/// Set with `--dart-define=BASE_HREF=/repo/` when deploying under a sub-path.
const _baseHref = String.fromEnvironment('BASE_HREF', defaultValue: '/');

const _ogImage = '$_baseHref$ogImagePath';

// Open Graph tags need `property=`, which `Document.meta` (name=) cannot emit.
Component _openGraph(String property, String content) {
  return meta(content: content, attributes: {'property': property});
}

Component buildApp() {
  return Document(
    title: siteTitle,
    lang: 'en',
    base: _baseHref,
    meta: {
      'description': siteDescription,
      'theme-color': '#0D1014',
      'twitter:card': 'summary_large_image',
      'twitter:title': siteTitle,
      'twitter:description': siteDescription,
      'twitter:image': _ogImage,
    },
    head: [
      _openGraph('og:type', 'website'),
      _openGraph('og:title', siteTitle),
      _openGraph('og:description', siteDescription),
      _openGraph('og:image', _ogImage),
      link(rel: 'icon', href: 'favicon.ico'),
      link(rel: 'stylesheet', href: Fonts.googleFontsUrl),
      link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
      link(rel: 'preconnect', href: 'https://fonts.gstatic.com', attributes: {'crossorigin': ''}),
    ],
    styles: globalStyles,
    body: const HomePage(),
  );
}
