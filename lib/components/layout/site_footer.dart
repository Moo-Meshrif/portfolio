import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/data/content/site_content.dart';
import 'package:portfolio/theme/tokens.dart';

class SiteFooter extends StatelessComponent {
  const SiteFooter({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      div(classes: 'container site-footer__inner', [
        p([const Component.text(footerCopyright)]),
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
