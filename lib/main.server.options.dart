// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:portfolio/components/layout/site_footer.dart' as _site_footer;
import 'package:portfolio/components/layout/site_header.dart' as _site_header;
import 'package:portfolio/components/sections/experience_item.dart'
    as _experience_item;
import 'package:portfolio/components/sections/hero.dart' as _hero;
import 'package:portfolio/components/sections/package_card.dart'
    as _package_card;
import 'package:portfolio/components/sections/project_card.dart'
    as _project_card;
import 'package:portfolio/components/sections/skill_group_card.dart'
    as _skill_group_card;
import 'package:portfolio/components/sections/stats_bar.dart' as _stats_bar;
import 'package:portfolio/components/shared/section_heading.dart'
    as _section_heading;
import 'package:portfolio/pages/home_page.dart' as _home_page;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  styles: () => [
    ..._site_footer.SiteFooter.styles,
    ..._site_header.SiteHeader.styles,
    ..._experience_item.ExperienceItem.styles,
    ..._hero.Hero.styles,
    ..._package_card.PackageCard.styles,
    ..._project_card.ProjectCard.styles,
    ..._skill_group_card.SkillGroupCard.styles,
    ..._stats_bar.StatsBar.styles,
    ..._section_heading.SectionHeading.styles,
    ..._home_page.HomePage.styles,
  ],
);
