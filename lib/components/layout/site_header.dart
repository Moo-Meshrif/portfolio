import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/data/content/site_content.dart';
import 'package:portfolio/theme/tokens.dart';

class SiteHeader extends StatelessComponent {
  const SiteHeader({super.key});

  @override
  Component build(BuildContext context) {
    return header(classes: 'site-header', [
      div(classes: 'container site-header__inner', [
        a(
          classes: 'site-header__brand',
          href: '#top',
          attributes: {'aria-label': '$siteName — home'},
          [
            span(classes: 'site-header__mark', attributes: {'aria-hidden': 'true'}, [Component.text(monogram)]),
            span(classes: 'site-header__name', [Component.text(siteName)]),
          ],
        ),
        nav(
          classes: 'site-header__nav',
          attributes: {'aria-label': 'Primary'},
          [
            for (final link in navLinks) a(classes: 'site-header__link', href: link.href, [Component.text(link.label)]),
            a(classes: 'pill', href: emailUrl, [Component.text('Get in touch')]),
          ],
        ),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.site-header__inner').styles(
      display: .flex,
      padding: .symmetric(vertical: 20.px, horizontal: Layout.gutter),
      flexWrap: .wrap,
      justifyContent: .spaceBetween,
      alignItems: .center,
      gap: .all(16.px),
    ),
    css('.site-header__brand').styles(
      display: .flex,
      minHeight: Layout.touchTarget,
      alignItems: .center,
      gap: .all(12.px),
    ),
    css('.site-header__mark').styles(
      display: .flex,
      width: 40.px,
      height: 40.px,
      radius: .circular(Radii.monogram),
      justifyContent: .center,
      alignItems: .center,
      color: Palette.onAccent,
      fontFamily: Fonts.heading,
      fontSize: 16.px,
      fontWeight: .w700,
      backgroundColor: Palette.accent,
    ),
    css('.site-header__name').styles(fontFamily: Fonts.heading, fontSize: 18.px, fontWeight: .w500),
    css('.site-header__nav').styles(
      display: .flex,
      flexWrap: .wrap,
      alignItems: .center,
      gap: .column(4.px),
    ),
    css('.site-header__link').styles(
      display: .inlineFlex,
      minHeight: Layout.touchTarget,
      padding: .symmetric(horizontal: 12.px),
      alignItems: .center,
      color: Palette.textSecondary,
      fontSize: 15.px,
    ),
    css('.site-header__link:hover').styles(color: Palette.textPrimary),
    css('.site-header__nav .pill').styles(margin: .only(left: 8.px)),
  ];
}
