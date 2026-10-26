import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/data/models/skill_group.dart';

class SkillGroupCard extends StatelessComponent {
  const SkillGroupCard({required this.group, super.key});

  final SkillGroup group;

  @override
  Component build(BuildContext context) {
    return div(classes: 'skill-group', [
      h3(classes: 'mono skill-group__label', [Component.text(group.label)]),
      ul(classes: 'chips', [
        for (final item in group.items) li(classes: 'chip chip--outline', [Component.text(item)]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.skill-group__label').styles(
      margin: .only(bottom: 16.px),
      color: Palette.textMuted,
      fontFamily: Fonts.mono,
      fontSize: 12.px,
      fontWeight: .w500,
      letterSpacing: const Unit.expression('0.08em'),
    ),
  ];
}
