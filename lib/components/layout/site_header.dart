import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/components/shared/icons.dart';
import 'package:portfolio/data/content/site_content.dart';
import 'package:portfolio/l10n/app_locale.dart';
import 'package:portfolio/l10n/strings.dart';
import 'package:portfolio/theme/tokens.dart';

class SiteHeader extends StatelessComponent {
  const SiteHeader({required this.locale, super.key});

  final AppLocale locale;

  @override
  Component build(BuildContext context) {
    final s = Strings.of(locale);
    return header(classes: 'site-header', [
      div(classes: 'container site-header__inner', [
        div(classes: 'site-header__start', [
          // Below desktop this button takes the place of the monogram and opens the links panel.
          button(
            classes: 'site-header__menu',
            type: ButtonType.button,
            attributes: {
              'aria-label': s.menuAria,
              'aria-expanded': 'false',
              'aria-controls': 'site-nav',
              'onclick':
                  "var h=this.closest('header'),o=h.classList.toggle('site-header--open');"
                  "this.setAttribute('aria-expanded',o)",
            },
            [
              const MenuIcon(),
              const CloseIcon(),
            ],
          ),
          a(
            classes: 'site-header__brand',
            href: locale.anchor('top'),
            attributes: {'aria-label': s.homeAria},
            [
              span(classes: 'site-header__mark', attributes: {'aria-hidden': 'true'}, [Component.text(monogram)]),
              span(classes: 'site-header__name', [Component.text(s.siteName)]),
            ],
          ),
        ]),
        nav(
          id: 'site-nav',
          classes: 'site-header__nav',
          attributes: {
            'aria-label': s.primaryNavAria,
            'onclick': "this.closest('header').classList.remove('site-header--open')",
          },
          [
            for (final link in s.nav)
              a(classes: 'site-header__link', href: locale.anchor(link.id), [Component.text(link.label)]),
          ],
        ),
        a(
          classes: 'lang-switch',
          href: locale.other.homeHref,
          attributes: {
            'hreflang': locale.other.code,
            'aria-label': s.switchAria,
            'onclick': "try{localStorage.setItem('lang','${locale.other.code}')}catch(e){}",
          },
          [
            // Fixed LTR order so the segments read EN | عربي on both pages.
            span(classes: 'lang-switch__track', attributes: {'dir': 'ltr'}, [
              _langSegment('EN', 'en', active: locale == AppLocale.en),
              _langSegment('عربي', 'ar', active: locale == AppLocale.ar),
            ]),
          ],
        ),
      ]),
    ]);
  }

  Component _langSegment(String label, String lang, {required bool active}) {
    return span(
      classes: active ? 'lang-switch__item lang-switch__item--active' : 'lang-switch__item',
      attributes: {'lang': lang},
      [Component.text(label)],
    );
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
    css('.lang-switch').styles(
      display: .inlineFlex,
      padding: .all(3.px),
      border: Border.all(style: .solid, color: Palette.borderOutline, width: 1.px),
      radius: .circular(Radii.pill),
      alignItems: .center,
      raw: {'order': '2', 'margin-inline-start': 'auto'},
    ),
    css('.lang-switch__track').styles(display: .inlineFlex, alignItems: .center, gap: .all(2.px)),
    css('.lang-switch__item').styles(
      display: .inlineFlex,
      minWidth: 40.px,
      minHeight: 34.px,
      padding: .symmetric(horizontal: 12.px),
      radius: .circular(Radii.pill),
      justifyContent: .center,
      alignItems: .center,
      color: Palette.textSecondary,
      fontSize: 13.px,
      fontWeight: .w600,
    ),
    css('.lang-switch:hover .lang-switch__item:not(.lang-switch__item--active)').styles(color: Palette.textPrimary),
    css('.lang-switch__item--active').styles(color: Palette.onAccent, backgroundColor: Palette.accent),
    css('.site-header__start').styles(display: .flex, alignItems: .center, gap: .all(12.px)),
    css('.site-header__menu').styles(
      display: .flex,
      width: 40.px,
      height: 40.px,
      padding: .zero,
      border: Border.all(style: .solid, color: Palette.accent, width: 1.px),
      radius: .circular(Radii.monogram),
      justifyContent: .center,
      alignItems: .center,
      color: Palette.onAccent,
      backgroundColor: Palette.accent,
      raw: {'cursor': 'pointer'},
    ),
    css('.site-header__menu .icon-close, .site-header--open .site-header__menu .icon-menu').styles(display: .none),
    css('.site-header--open .site-header__menu .icon-close').styles(display: .block),
    css('.site-header__mark').styles(display: .none),
    // Below desktop: button + name | language switch; links open as a dropdown panel.
    css('.site-header__nav').styles(
      display: .none,
      padding: .all(8.px),
      border: Border.all(style: .solid, color: Palette.borderCard, width: 1.px),
      radius: .circular(Radii.card),
      flexDirection: .column,
      alignItems: .stretch,
      backgroundColor: Palette.surface,
      raw: {'order': '3', 'flex-basis': '100%'},
    ),
    css('.site-header--open .site-header__nav').styles(display: .flex),
    css('.site-header__nav .site-header__link').styles(padding: .symmetric(horizontal: 16.px), fontSize: 17.px),
    css('.site-header__nav .site-header__link:hover').styles(backgroundColor: Palette.surface2),
    // Desktop: monogram | centered links | language switch.
    css.media(MediaQuery.screen(minWidth: 1080.px), [
      css('.site-header__inner').styles(
        display: .grid,
        raw: {'grid-template-columns': '1fr auto 1fr'},
      ),
      css('.site-header__menu').styles(display: .none),
      css('.site-header__mark').styles(display: .flex),
      css('.site-header__nav').styles(
        display: .flex,
        padding: .zero,
        border: Border.none,
        radius: .circular(Unit.zero),
        flexDirection: .row,
        alignItems: .center,
        backgroundColor: Colors.transparent,
        raw: {'order': '2', 'flex-basis': 'auto'},
      ),
      css('.site-header__nav .site-header__link').styles(padding: .symmetric(horizontal: 12.px), fontSize: 15.px),
      css('.site-header__nav .site-header__link:hover').styles(backgroundColor: Colors.transparent),
      css('.lang-switch').styles(raw: {'order': '3', 'margin-inline-start': '0', 'justify-self': 'end'}),
    ]),
    css('.site-header__link:hover').styles(color: Palette.textPrimary),
  ];
}
