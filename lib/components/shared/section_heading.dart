import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/theme/tokens.dart';

class SectionHeading extends StatelessComponent {
  const SectionHeading({required this.index, required this.title, this.subtitle, this.id, super.key});

  final String index;
  final String title;
  final String? subtitle;
  final String? id;

  @override
  Component build(BuildContext context) {
    return header(classes: 'section-heading', [
      h2(id: id, [
        span(
          classes: 'mono mono-accent section-heading__index',
          attributes: {'aria-hidden': 'true'},
          [
            Component.text(index),
          ],
        ),
        Component.text(title),
      ]),
      if (subtitle != null) p(classes: 'section-heading__subtitle', [Component.text(subtitle!)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.section-heading').styles(margin: .only(bottom: 48.px)),
    css('.section-heading h2').styles(
      display: .flex,
      flexWrap: .wrap,
      alignItems: .baseline,
      gap: .all(16.px),
      fontSize: const Unit.expression('clamp(36px, 4.5vw, 56px)'),
      letterSpacing: const Unit.expression('-0.02em'),
      lineHeight: 1.05.em,
    ),
    css('.section-heading__index').styles(fontSize: 13.px, letterSpacing: const Unit.expression('0.08em')),
    css('.section-heading__subtitle').styles(
      maxWidth: 640.px,
      margin: .only(top: 16.px),
      color: Palette.textSecondary,
      fontSize: 18.px,
    ),
  ];
}
