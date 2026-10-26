import 'package:portfolio/data/content/site_content.dart';

enum AppLocale {
  en(code: 'en', dir: 'ltr', path: '', ogLocale: 'en_US'),
  ar(code: 'ar', dir: 'rtl', path: 'ar/', ogLocale: 'ar_AR');

  const AppLocale({required this.code, required this.dir, required this.path, required this.ogLocale});

  final String code;
  final String dir;

  /// Path of this locale's page, relative to the site base.
  final String path;
  final String ogLocale;

  AppLocale get other => this == en ? ar : en;

  /// Link target for this locale's page, relative to the site base.
  String get homeHref => path.isEmpty ? './' : path;

  String get url => '$siteUrl$path';

  /// In-page anchors must be prefixed with the page path, since `<base href>` points at the site root.
  String anchor(String id) => '$path#$id';

  static AppLocale fromUrl(String url) {
    final segments = url.split('/').where((s) => s.isNotEmpty);
    return segments.isNotEmpty && segments.first == ar.code ? ar : en;
  }
}
