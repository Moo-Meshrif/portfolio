import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/data/models/job.dart';

class ExperienceItem extends StatelessComponent {
  const ExperienceItem.job({required Job this.job, super.key}) : education = null;

  const ExperienceItem.education({required Education this.education, super.key}) : job = null;

  final Job? job;
  final Education? education;

  @override
  Component build(BuildContext context) {
    final job = this.job;
    final education = this.education;
    return article(classes: 'experience-item', [
      div(classes: 'experience-item__meta', [
        p(classes: 'mono experience-item__dates', [Component.text(job?.dates ?? education!.dates)]),
        h3([Component.text(job?.role ?? education!.degree)]),
        p(classes: 'experience-item__company', [
          Component.text(job != null ? '${job.company} · ${job.location}' : education!.school),
        ]),
      ]),
      if (job != null)
        ul(classes: 'experience-item__list', [
          for (final line in job.highlights) li([Component.text(line)]),
        ])
      else
        p(classes: 'experience-item__languages mono', [Component.text(education!.languages)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.experience-item').styles(
      display: .grid,
      padding: .symmetric(vertical: 40.px),
      border: Border.only(
        top: BorderSide(style: .solid, color: Palette.borderRule, width: 1.px),
      ),
      gap: .all(24.px),
      raw: {'grid-template-columns': 'repeat(auto-fit, minmax(min(100%, 320px), 1fr))'},
    ),
    css('.experience-item__dates').styles(
      margin: .only(bottom: 12.px),
      color: Palette.textMuted,
    ),
    css('.experience-item h3').styles(fontSize: 24.px, lineHeight: 1.2.em),
    css('.experience-item__company').styles(
      margin: .only(top: 6.px),
      color: Palette.textSecondary,
    ),
    css('.experience-item__list').styles(display: .flex, flexDirection: .column, gap: .all(12.px)),
    css('.experience-item__list li').styles(
      position: const Position.relative(),
      color: Palette.textSecondary,
      raw: {'padding-inline-start': '22px'},
    ),
    css('.experience-item__list li::before').styles(
      content: '""',
      position: Position.absolute(top: 0.7.em),
      width: 8.px,
      height: 1.px,
      backgroundColor: Palette.accent,
      raw: {'inset-inline-start': '0'},
    ),
    css('.experience-item__languages').styles(margin: .zero, color: Palette.textMuted, textTransform: .none),
  ];
}
