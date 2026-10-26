import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/components/shared/icons.dart';
import 'package:portfolio/components/shared/section_heading.dart';
import 'package:portfolio/data/content/site_content.dart';
import 'package:portfolio/l10n/app_locale.dart';
import 'package:portfolio/l10n/strings.dart';
import 'package:portfolio/theme/tokens.dart';

class Contact extends StatelessComponent {
  const Contact({required this.locale, super.key});

  final AppLocale locale;

  @override
  Component build(BuildContext context) {
    final s = Strings.of(locale);
    return section(
      id: 'contact',
      classes: 'section',
      attributes: {'aria-labelledby': 'contact-heading'},
      [
        div(classes: 'container', [
          SectionHeading(id: 'contact-heading', index: '05', title: s.contactTitle, subtitle: s.contactSubtitle),
          ul(classes: 'contact-list', [
            _item(label: s.contactEmail, value: email, href: emailUrl),
            _item(label: s.contactPhone, value: phoneDisplay, href: phoneUrl),
            _item(label: 'LinkedIn', value: linkedinHandle, href: linkedinUrl, external: true),
          ]),
        ]),
      ],
    );
  }

  Component _item({required String label, required String value, required String href, bool external = false}) {
    return li([
      a(
        classes: 'contact-item',
        href: href,
        target: external ? Target.blank : null,
        attributes: external ? {'rel': 'noopener'} : null,
        [
          span(classes: 'mono mono-accent', [Component.text(label)]),
          span(classes: 'contact-item__value', attributes: {'dir': 'ltr'}, [Component.text(value)]),
          span(classes: 'contact-item__icon', [const ArrowUpRightIcon()]),
        ],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('#contact').styles(minHeight: 100.vh),
    css('.contact-list').styles(
      display: .grid,
      padding: .zero,
      gap: .all(16.px),
      raw: {'grid-template-columns': 'repeat(auto-fit, minmax(min(100%, 320px), 1fr))'},
    ),
    css('.contact-item').styles(
      display: .flex,
      height: 100.percent,
      padding: .all(24.px),
      border: Border.all(style: .solid, color: Palette.borderCard, width: 1.px),
      radius: .circular(Radii.card),
      flexDirection: .column,
      gap: .all(12.px),
      backgroundColor: Palette.surface,
      raw: {'position': 'relative', 'transition': 'border-color .15s'},
    ),
    css('.contact-item:hover').styles(
      border: Border.all(style: .solid, color: Palette.borderOutline, width: 1.px),
    ),
    css('.contact-item__value').styles(
      fontFamily: Fonts.heading,
      fontSize: 22.px,
      fontWeight: .w700,
      raw: {'overflow-wrap': 'anywhere', 'text-align': 'start', 'unicode-bidi': 'plaintext'},
    ),
    css('.contact-item__icon').styles(
      display: .flex,
      color: Palette.textMuted,
      raw: {'position': 'absolute', 'top': '24px', 'inset-inline-end': '24px'},
    ),
    css('.contact-item:hover .contact-item__icon').styles(color: Palette.accent),
  ];
}
