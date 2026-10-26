import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/components/shared/icons.dart';
import 'package:portfolio/data/models/package.dart';

class PackageCard extends StatelessComponent {
  const PackageCard({required this.package, super.key});

  final Package package;

  @override
  Component build(BuildContext context) {
    return a(
      classes: 'package-card',
      href: package.url,
      target: Target.blank,
      attributes: {'rel': 'noopener'},
      [
        article([
          div(classes: 'package-card__top', [
            h3(classes: 'package-card__name', [Component.text(package.name)]),
            span(classes: 'package-card__icon', [const ArrowUpRightIcon()]),
          ]),
          p(classes: 'package-card__desc', [Component.text(package.description)]),
          p(classes: 'mono mono-accent package-card__meta', [Component.text(package.meta)]),
        ]),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.package-card').styles(
      display: .block,
      padding: .all(28.px),
      border: Border.all(style: .solid, color: Palette.borderCard, width: 1.px),
      radius: .circular(Radii.card),
      backgroundColor: Palette.surface,
    ),
    css('.package-card:hover').styles(
      border: Border.all(style: .solid, color: Palette.borderOutline, width: 1.px),
    ),
    css('.package-card article').styles(display: .flex, height: 100.percent, flexDirection: .column, gap: .all(14.px)),
    css(
      '.package-card__top',
    ).styles(display: .flex, justifyContent: .spaceBetween, alignItems: .center, gap: .all(16.px)),
    css('.package-card__name').styles(
      fontFamily: Fonts.mono,
      fontSize: 20.px,
      fontWeight: .w500,
      raw: {'overflow-wrap': 'anywhere'},
    ),
    css('.package-card__icon').styles(display: .flex, color: Palette.textMuted),
    css('.package-card:hover .package-card__icon').styles(color: Palette.accent),
    css('.package-card__desc').styles(flex: Flex(grow: 1), color: Palette.textSecondary, fontSize: 15.px),
    css('.package-card__meta').styles(margin: .zero),
  ];
}
