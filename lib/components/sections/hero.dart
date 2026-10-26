import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/data/content/site_content.dart';
import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/components/shared/icons.dart';

class Hero extends StatelessComponent {
  const Hero({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'top', classes: 'hero', [
      div(classes: 'container hero__inner', [
        div(classes: 'hero__copy', [
          h1([
            span(classes: 'mono-accent-text', [const Component.text('Senior Flutter Engineer')]),
            const Component.text(' delivering production-grade mobile apps, from architecture to release.'),
          ]),
          p(classes: 'hero__lead', [const Component.text(siteDescription)]),
          div(classes: 'hero__actions', [
            a(classes: 'pill pill--accent', href: '#work', [
              const Component.text('View my work'),
              const ArrowRightIcon(),
            ]),
            a(
              classes: 'pill',
              href: githubUrl,
              target: Target.blank,
              attributes: {'rel': 'noopener'},
              [
                const Component.text('GitHub'),
              ],
            ),
            a(
              classes: 'pill',
              href: linkedinUrl,
              target: Target.blank,
              attributes: {'rel': 'noopener'},
              [const Component.text('LinkedIn')],
            ),
            a(
              classes: 'pill',
              href: cvUrl,
              download: 'Mohamed-Meshrif-CV.pdf',
              [const Component.text('Download CV')],
            ),
          ]),
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
    css('.hero__copy').styles(raw: {'grid-column': 'span 1', 'min-width': '0'}),
    css('.hero h1').styles(
      fontSize: const Unit.expression('clamp(38px, 5.4vw, 76px)'),
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
  ];
}
