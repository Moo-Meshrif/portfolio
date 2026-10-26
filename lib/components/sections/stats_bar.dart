import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/data/content/hero_content.dart';
import 'package:portfolio/l10n/app_locale.dart';

class StatsBar extends StatelessComponent {
  const StatsBar({required this.locale, super.key});

  final AppLocale locale;

  @override
  Component build(BuildContext context) {
    return div(classes: 'stats', [
      div(classes: 'container', [
        ul(classes: 'stats__grid', [
          for (final stat in statsFor(locale))
            li(classes: 'stats__item', [
              span(classes: 'stats__value', [Component.text(stat.value)]),
              span(classes: 'stats__label', [Component.text(stat.label)]),
            ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.stats').styles(
      border: Border.symmetric(
        horizontal: BorderSide(style: .solid, color: Palette.borderRule, width: 1.px),
      ),
    ),
    css('.stats__grid').styles(
      display: .grid,
      padding: .symmetric(vertical: 48.px),
      gap: .all(32.px),
      raw: {'grid-template-columns': 'repeat(4, minmax(0, 1fr))'},
    ),
    css.media(MediaQuery.screen(maxWidth: 899.px), [
      css('.stats__grid').styles(raw: {'grid-template-columns': 'repeat(2, minmax(0, 1fr))'}),
    ]),
    css('.stats__item').styles(display: .flex, flexDirection: .column, gap: .all(8.px)),
    css('.stats__value').styles(
      fontFamily: Fonts.heading,
      fontSize: const Unit.expression('clamp(34px, 8vw, 48px)'),
      fontWeight: .w700,
      letterSpacing: const Unit.expression('-0.02em'),
      lineHeight: 1.05.em,
    ),
    css('.stats__label').styles(color: Palette.textSecondary, fontSize: 15.px),
  ];
}
