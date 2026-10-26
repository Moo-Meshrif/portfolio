import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'package:portfolio/data/content/site_content.dart';
import 'package:portfolio/l10n/app_locale.dart';
import 'package:portfolio/l10n/strings.dart';
import 'package:portfolio/theme/global_styles.dart';
import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/pages/home_page.dart';

/// Set with `--dart-define=BASE_HREF=/repo/` when deploying under a sub-path.
const _baseHref = String.fromEnvironment('BASE_HREF', defaultValue: '/');

// Open Graph tags need `property=`, which `Document.meta` (name=) cannot emit.
Component _openGraph(String property, String content) {
  return meta(content: content, attributes: {'property': property});
}

// Sends first-time visitors with an Arabic device to /ar/, and follows the visitor's saved choice afterwards.
// Both pages are prerendered, so crawlers and link previews never depend on this.
const _localeRedirect = '''
(function(){try{
var cur=document.documentElement.lang,saved=null;
try{saved=localStorage.getItem('lang')}catch(e){}
var nav=(navigator.languages&&navigator.languages[0])||navigator.language||'en';
var want=saved||(cur==='en'&&nav.slice(0,2).toLowerCase()==='ar'?'ar':cur);
if(want!==cur){var base=document.querySelector('base');
var root=base?base.href:'/';
location.replace(root+(want==='ar'?'ar/':'')+location.hash);}
}catch(e){}})();
''';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    final locale = AppLocale.fromUrl(context.url);
    final s = Strings.of(locale);
    final other = locale.other;
    return Document(
      title: s.siteTitle,
      lang: locale.code,
      base: _baseHref,
      meta: {
        'description': s.siteDescription,
        'theme-color': '#0D1014',
        'twitter:card': 'summary_large_image',
        'twitter:title': s.siteTitle,
        'twitter:description': s.siteDescription,
        'twitter:image': ogImageUrl,
      },
      head: [
        Document.html(attributes: {'dir': locale.dir}),
        script(content: _localeRedirect),
        link(rel: 'canonical', href: locale.url),
        link(rel: 'alternate', href: AppLocale.en.url, attributes: {'hreflang': 'en'}),
        link(rel: 'alternate', href: AppLocale.ar.url, attributes: {'hreflang': 'ar'}),
        link(rel: 'alternate', href: AppLocale.en.url, attributes: {'hreflang': 'x-default'}),
        _openGraph('og:type', 'website'),
        _openGraph('og:locale', locale.ogLocale),
        _openGraph('og:locale:alternate', other.ogLocale),
        _openGraph('og:title', s.siteTitle),
        _openGraph('og:description', s.siteDescription),
        _openGraph('og:url', locale.url),
        _openGraph('og:image', ogImageUrl),
        _openGraph('og:image:width', '2400'),
        _openGraph('og:image:height', '1260'),
        _openGraph('og:image:alt', s.siteTitle),
        link(rel: 'icon', href: 'favicon.ico'),
        link(rel: 'stylesheet', href: Fonts.googleFontsUrl),
        link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
        link(rel: 'preconnect', href: 'https://fonts.gstatic.com', attributes: {'crossorigin': ''}),
      ],
      styles: globalStyles,
      body: HomePage(locale: locale),
    );
  }
}
