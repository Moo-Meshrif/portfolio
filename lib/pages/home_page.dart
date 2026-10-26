import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/components/shared/section_heading.dart';
import 'package:portfolio/data/content/experience_content.dart';
import 'package:portfolio/components/sections/experience_item.dart';
import 'package:portfolio/components/sections/hero.dart';
import 'package:portfolio/components/sections/stats_bar.dart';
import 'package:portfolio/components/sections/package_card.dart';
import 'package:portfolio/data/content/packages_content.dart';
import 'package:portfolio/components/sections/project_card.dart';
import 'package:portfolio/data/content/projects_content.dart';
import 'package:portfolio/components/sections/skill_group_card.dart';
import 'package:portfolio/data/content/skills_content.dart';
import 'package:portfolio/components/layout/site_footer.dart';
import 'package:portfolio/components/layout/site_header.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      const SiteHeader(),
      main_([
        const Hero(),
        const StatsBar(),
        _section(
          id: 'work',
          index: '01',
          title: 'Selected work',
          subtitle: workSubtitle,
          gridClass: 'grid grid--projects',
          children: [for (final project in projects) ProjectCard(project: project)],
        ),
        _section(
          id: 'open-source',
          index: '02',
          title: 'Open source',
          subtitle: openSourceSubtitle,
          gridClass: 'grid grid--packages',
          children: [for (final package in packages) PackageCard(package: package)],
        ),
        section(
          id: 'experience',
          classes: 'section',
          attributes: {'aria-labelledby': 'experience-heading'},
          [
            div(classes: 'container', [
              const SectionHeading(id: 'experience-heading', index: '03', title: 'Experience'),
              div(classes: 'experience', [
                for (final job in jobs) ExperienceItem.job(job: job),
                const ExperienceItem.education(education: education),
              ]),
            ]),
          ],
        ),
        _section(
          id: 'skills',
          index: '04',
          title: 'Skills',
          gridClass: 'grid grid--skills',
          children: [for (final group in skillGroups) SkillGroupCard(group: group)],
        ),
      ]),
      const SiteFooter(),
    ]);
  }

  Component _section({
    required String id,
    required String index,
    required String title,
    required String gridClass,
    required List<Component> children,
    String? subtitle,
  }) {
    return section(
      id: id,
      classes: 'section',
      attributes: {'aria-labelledby': '$id-heading'},
      [
        div(classes: 'container', [
          SectionHeading(id: '$id-heading', index: index, title: title, subtitle: subtitle),
          div(classes: gridClass, children),
        ]),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    // Last section needs room to scroll its heading to the top of the viewport.
    css('#skills').styles(minHeight: 100.vh),
    css('.grid').styles(display: .grid, gap: .all(Layout.gridGap)),
    css('.grid--projects').styles(raw: {'grid-template-columns': 'repeat(auto-fill, minmax(min(100%, 320px), 1fr))'}),
    css('.grid--packages').styles(raw: {'grid-template-columns': 'repeat(auto-fill, minmax(min(100%, 380px), 1fr))'}),
    css('.grid--skills').styles(
      gap: .all(40.px),
      raw: {'grid-template-columns': 'repeat(auto-fit, minmax(min(100%, 340px), 1fr))'},
    ),
    css('.experience').styles(
      border: Border.only(
        bottom: BorderSide(style: .solid, color: Palette.borderRule, width: 1.px),
      ),
    ),
  ];
}
