import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/theme/tokens.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/data/screenshots.dart';

class ProjectCard extends StatelessComponent {
  const ProjectCard({required this.project, super.key});

  final Project project;

  @override
  Component build(BuildContext context) {
    final screenshots = screenshotsFor(project.slug);
    final links = [
      for (final store in project.stores)
        if (project.urlFor(store) != null) store,
    ];
    return article(classes: links.isEmpty ? 'project-card' : 'project-card project-card--links', attributes: links.isEmpty ? null : {'tabindex': '0'}, [
      div(classes: 'project-card__media', [
        if (screenshots.isNotEmpty)
          for (var i = 0; i < screenshots.length; i++)
            img(src: screenshots[i], alt: '${project.name} screenshot ${i + 1}', attributes: {'loading': 'lazy'})
        else
          for (var i = 0; i < 3; i++)
            div(classes: 'project-card__placeholder mono', [if (i == 1) const Component.text('Screenshots soon')]),
        if (links.isNotEmpty) ...[
          div(classes: 'project-card__overlay', [
            span(classes: 'mono', [const Component.text('Open in')]),
            for (final store in links)
              a(
                classes: 'project-card__store-btn',
                href: project.urlFor(store)!,
                target: Target.blank,
                attributes: {'rel': 'noopener', 'aria-label': '${project.name} on ${store.label}'},
                [Component.text('${store.label} ↗')],
              ),
          ]),
        ],
      ]),
      div(classes: 'project-card__body', [
        span(classes: 'mono mono-accent', [Component.text(project.tag)]),
        h3([Component.text(project.name)]),
        p(classes: 'project-card__desc', [Component.text(project.description)]),
        ul(
          classes: 'chips',
          attributes: {'aria-label': 'Stack'},
          [
            for (final item in project.stack) li(classes: 'chip', [Component.text(item)]),
          ],
        ),
        p(classes: 'project-card__stores', [
          for (var i = 0; i < project.stores.length; i++) ...[
            if (i > 0) const Component.text(' · '),
            _storeLabel(project.stores[i]),
          ],
        ]),
      ]),
    ]);
  }

  Component _storeLabel(Store store) {
    final url = project.urlFor(store);
    if (url == null) return Component.text(store.label);
    return a(href: url, target: Target.blank, attributes: {'rel': 'noopener'}, [Component.text(store.label)]);
  }

  @css
  static List<StyleRule> get styles => [
    css('.project-card').styles(
      display: .flex,
      padding: .all(20.px),
      border: Border.all(style: .solid, color: Palette.borderCard, width: 1.px),
      radius: .circular(Radii.card),
      flexDirection: .column,
      gap: .all(24.px),
      backgroundColor: Palette.surface,
      raw: {'transition': 'border-color .15s'},
    ),
    css('.project-card:hover').styles(
      border: Border.all(style: .solid, color: Palette.borderOutline, width: 1.px),
    ),
    css('.project-card__media').styles(
      display: .grid,
      position: Position.relative(),
      gap: .all(8.px),
      raw: {'grid-template-columns': 'repeat(3, 1fr)'},
    ),
    css('.project-card__media img').styles(
      width: 100.percent,
      border: Border.all(style: .solid, color: Palette.borderCard, width: 1.px),
      radius: .circular(Radii.placeholder),
      backgroundColor: Palette.surface2,
      raw: {'aspect-ratio': '9 / 19', 'object-fit': 'cover', 'object-position': 'top'},
    ),
    css('.project-card__placeholder').styles(
      display: .flex,
      width: 100.percent,
      padding: .all(4.px),
      border: Border.all(style: .dashed, color: Palette.borderDashed, width: 1.px),
      radius: .circular(Radii.placeholder),
      justifyContent: .center,
      alignItems: .center,
      color: Palette.textMuted,
      textAlign: .center,
      textTransform: .none,
      raw: {'aspect-ratio': '9 / 19', 'box-sizing': 'border-box', 'min-width': '0', 'font-size': '10px'},
    ),
    css('.project-card--links').styles(raw: {'cursor': 'pointer', 'outline': 'none'}),
    css('.project-card--links:focus-visible').styles(
      border: Border.all(style: .solid, color: Palette.accent, width: 1.px),
    ),
    css('.project-card__overlay').styles(
      display: .flex,
      position: Position.absolute(top: 0.px, right: 0.px, bottom: 0.px, left: 0.px),
      radius: .circular(Radii.placeholder),
      flexDirection: .column,
      justifyContent: .center,
      alignItems: .center,
      gap: .all(10.px),
      color: Palette.textPrimary,
      fontSize: 13.px,
      raw: {
        'background': 'rgba(13,16,20,.82)',
        'backdrop-filter': 'blur(4px)',
        'opacity': '0',
        'pointer-events': 'none',
        'transition': 'opacity .15s',
      },
    ),
    css('.project-card--links:hover .project-card__overlay, .project-card--links:focus-within .project-card__overlay')
        .styles(raw: {'opacity': '1', 'pointer-events': 'auto'}),
    css('.project-card__store-btn').styles(
      display: .flex,
      minHeight: Layout.touchTarget,
      padding: .symmetric(horizontal: 18.px),
      border: Border.all(style: .solid, color: Palette.accent, width: 1.px),
      radius: .circular(Radii.pill),
      alignItems: .center,
      color: Palette.accent,
      fontFamily: Fonts.mono,
      fontSize: 13.px,
    ),
    css('.project-card__store-btn:hover, .project-card__store-btn:focus-visible').styles(
      color: Palette.onAccent,
      backgroundColor: Palette.accent,
    ),
    css('.project-card__body').styles(display: .flex, flexDirection: .column, gap: .all(12.px), flex: Flex(grow: 1)),
    css(
      '.project-card h3',
    ).styles(fontSize: 26.px, letterSpacing: const Unit.expression('-0.01em'), lineHeight: 1.15.em),
    css('.project-card__desc').styles(flex: Flex(grow: 1), color: Palette.textSecondary, fontSize: 15.px),
    css('.project-card .chips').styles(
      padding: .zero,
      margin: .only(top: 4.px),
    ),
    css('.project-card .chip').styles(listStyle: .none),
    css('.project-card__stores').styles(
      padding: .only(top: 16.px),
      margin: .only(top: 8.px),
      border: Border.only(
        top: BorderSide(style: .solid, color: Palette.borderRule, width: 1.px),
      ),
      color: Palette.textMuted,
      fontFamily: Fonts.mono,
      fontSize: 13.px,
    ),
    css('.project-card__stores a:hover').styles(color: Palette.accent),
  ];
}
