import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/l10n/app_locale.dart';
import 'package:portfolio/l10n/strings.dart';
import 'package:portfolio/theme/tokens.dart';

class SiteFooter extends StatelessComponent {
  const SiteFooter({required this.locale, super.key});

  final AppLocale locale;

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      div(classes: 'container site-footer__inner', [
        p([Component.text(Strings.of(locale).footerCopyright)]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.site-footer__inner').styles(
      display: .flex,
      padding: .symmetric(vertical: 32.px, horizontal: Layout.gutter),
      flexWrap: .wrap,
      justifyContent: .spaceBetween,
      gap: .all(12.px),
      color: Palette.textMuted,
      fontSize: 14.px,
    ),
  ];
}
