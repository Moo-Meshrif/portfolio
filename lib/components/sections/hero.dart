import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/data/content/site_content.dart';
import 'package:portfolio/l10n/app_locale.dart';
import 'package:portfolio/l10n/strings.dart';
import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/components/shared/icons.dart';

class Hero extends StatelessComponent {
  const Hero({required this.locale, super.key});

  final AppLocale locale;

  @override
  Component build(BuildContext context) {
    final s = Strings.of(locale);
    return section(id: 'top', classes: 'hero', [
      div(classes: 'container hero__inner', [
        div(classes: 'hero__copy', [
          h1([
            span(classes: 'mono-accent-text', [Component.text(s.heroAccent)]),
            Component.text(s.heroRest),
          ]),
          p(classes: 'hero__lead', [Component.text(s.siteDescription)]),
          div(classes: 'hero__actions', [
            a(classes: 'pill pill--accent', href: locale.anchor('work'), [
              Component.text(s.viewWork),
              const ArrowRightIcon(flip: true),
            ]),
            a(
              classes: 'pill',
              href: cvUrl,
              download: s.cvDownloadName,
              [Component.text(s.downloadCv)],
            ),
          ]),
        ]),
        div(classes: 'hero__photo', [
          img(
            src: 'images/me.jpg',
            alt: s.photoAlt,
            width: 360,
            height: 360,
            attributes: {'decoding': 'async', 'fetchpriority': 'high'},
          ),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.hero').styles(
      padding: .only(top: 56.px, bottom: 80.px),
    ),
    css('.hero__inner').styles(
      display: .grid,
      alignItems: .center,
      gap: .all(48.px),
      raw: {'grid-template-columns': 'minmax(0, 1fr)'},
    ),
    // Phones: photo above the headline. Wide screens: photo on the opposite side of the intro.
    css('.hero__photo').styles(
      width: const Unit.expression('clamp(120px, 34vw, 160px)'),
      padding: .all(6.px),
      border: Border.all(style: .solid, color: Palette.accent, width: 2.px),
      radius: .circular(Radii.pill),
      raw: {'order': '-1', 'box-shadow': '0 0 48px rgba(91, 192, 248, 0.18)'},
    ),
    css('.hero__photo img').styles(
      width: 100.percent,
      height: .auto,
      radius: .circular(Radii.pill),
      raw: {'aspect-ratio': '1', 'object-fit': 'cover'},
    ),
    css.media(MediaQuery.screen(minWidth: 1080.px), [
      css('.hero__inner').styles(raw: {'grid-template-columns': 'minmax(0, 1fr) auto'}),
      css('.hero__photo').styles(width: const Unit.expression('clamp(240px, 23vw, 320px)'), padding: .all(10.px), raw: {'order': '0', 'justify-self': 'end', 'align-self': 'start'}),
    ]),
    css('.hero__copy').styles(raw: {'grid-column': 'span 1', 'min-width': '0'}),
    css('.hero h1').styles(
      fontSize: const Unit.expression('clamp(30px, 5.4vw, 64px)'),
      letterSpacing: const Unit.expression('-0.03em'),
      lineHeight: 1.02.em,
      raw: {'text-wrap': 'balance'},
    ),
    css('.mono-accent-text').styles(color: Palette.accent),
    css('.hero__lead').styles(
      maxWidth: 620.px,
      margin: .only(top: 28.px),
      color: Palette.textSecondary,
      fontSize: 19.px,
    ),
    css('.hero__actions').styles(
      display: .flex,
      margin: .only(top: 36.px),
      flexWrap: .wrap,
      gap: .all(12.px),
    ),
    // Phones and small tablets: centered stack; buttons keep their desktop pill size.
    css.media(MediaQuery.screen(maxWidth: 1079.px), [
      css('.hero').styles(padding: .only(top: 28.px, bottom: 56.px)),
      css('.hero__inner').styles(gap: .all(28.px)),
      css('.hero__photo').styles(
        width: const Unit.expression('clamp(132px, 38vw, 176px)'),
        raw: {'justify-self': 'center'},
      ),
      css('.hero__copy').styles(textAlign: .center),
      css('.hero__lead').styles(margin: .only(top: 20.px, left: .auto, right: .auto), fontSize: 17.px),
      css('.hero__actions').styles(
        margin: .only(top: 28.px),
        justifyContent: .center,
      ),
    ]),
    // Narrow phones: two buttons per row.
    css.media(MediaQuery.screen(maxWidth: 599.px), [
      css('.hero__actions').styles(
        display: .grid,
        raw: {'grid-template-columns': 'repeat(2, minmax(0, 1fr))'},
      ),
    ]),
    // Tablets: photo sits between the phone and desktop sizes.
    css.media(MediaQuery.screen(minWidth: 600.px, maxWidth: 1079.px), [
      css('.hero__photo').styles(width: 208.px, padding: .all(8.px)),
    ]),
  ];
}
