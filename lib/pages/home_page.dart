import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/components/shared/section_heading.dart';
import 'package:portfolio/data/content/experience_content.dart';
import 'package:portfolio/l10n/app_locale.dart';
import 'package:portfolio/l10n/strings.dart';
import 'package:portfolio/components/sections/experience_item.dart';
import 'package:portfolio/components/sections/contact.dart';
import 'package:portfolio/components/sections/hero.dart';
import 'package:portfolio/components/sections/stats_bar.dart';
import 'package:portfolio/components/sections/package_card.dart';
import 'package:portfolio/data/content/packages_content.dart';
import 'package:portfolio/components/sections/project_card.dart';
import 'package:portfolio/data/content/projects_content.dart';
import 'package:portfolio/components/sections/skill_group_card.dart';
import 'package:portfolio/data/content/skills_content.dart';
import 'package:portfolio/components/layout/back_to_top.dart';
import 'package:portfolio/components/layout/site_footer.dart';
import 'package:portfolio/components/layout/site_header.dart';

class HomePage extends StatelessComponent {
  const HomePage({required this.locale, super.key});

  final AppLocale locale;

  @override
  Component build(BuildContext context) {
    final s = Strings.of(locale);
    return Component.fragment([
      SiteHeader(locale: locale),
      main_([
        Hero(locale: locale),
        StatsBar(locale: locale),
        _section(
          id: 'work',
          index: '01',
          title: s.workTitle,
          subtitle: s.workSubtitle,
          gridClass: 'grid grid--projects',
          children: [for (final project in projectsFor(locale)) ProjectCard(project: project, locale: locale)],
        ),
        _section(
          id: 'open-source',
          index: '02',
          title: s.openSourceTitle,
          subtitle: s.openSourceSubtitle,
          gridClass: 'grid grid--packages',
          children: [for (final package in packagesFor(locale)) PackageCard(package: package)],
        ),
        section(
          id: 'experience',
          classes: 'section',
          attributes: {'aria-labelledby': 'experience-heading'},
          [
            div(classes: 'container', [
              SectionHeading(id: 'experience-heading', index: '03', title: s.experienceTitle),
              div(classes: 'experience', [
                for (final job in jobsFor(locale)) ExperienceItem.job(job: job),
                ExperienceItem.education(education: educationFor(locale)),
              ]),
            ]),
          ],
        ),
        _section(
          id: 'skills',
          index: '04',
          title: s.skillsTitle,
          gridClass: 'grid grid--skills',
          children: [for (final group in skillGroupsFor(locale)) SkillGroupCard(group: group)],
        ),
        Contact(locale: locale),
      ]),
      SiteFooter(locale: locale),
      BackToTop(locale: locale),
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
