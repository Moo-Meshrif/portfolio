import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'package:portfolio/components/shared/icons.dart';
import 'package:portfolio/l10n/app_locale.dart';
import 'package:portfolio/l10n/strings.dart';
import 'package:portfolio/theme/tokens.dart';

class BackToTop extends StatelessComponent {
  const BackToTop({required this.locale, super.key});

  final AppLocale locale;

  @override
  Component build(BuildContext context) {
    final s = Strings.of(locale);
    final label = s.backToTopLabel;
    return a(
      classes: 'fab',
      href: locale.anchor('top'),
      attributes: {
        'aria-label': label,
        'title': label,
        // Inline handlers resolve names on the element first, so `window.` is explicit. Hide right away on tap; the class is dropped at the top, or if the visitor scrolls back down.
        'onclick':
            "var b=this;b.classList.add('fab--gone');window.scrollTo({top:0,behavior:'smooth'});"
            "var w=window,l=w.scrollY,f=function(){if(w.scrollY<=0||w.scrollY>l+2){b.classList.remove('fab--gone');w.removeEventListener('scroll',f)}l=w.scrollY};"
            "w.addEventListener('scroll',f);return false",
      },
      [const ArrowUpIcon(size: 20)],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.fab').styles(
      display: .flex,
      width: 44.px,
      height: 44.px,
      radius: .circular(Radii.pill),
      justifyContent: .center,
      alignItems: .center,
      color: Palette.onAccent,
      backgroundColor: Palette.accent,
      raw: {
        'position': 'fixed',
        'inset-inline-end': 'max(16px, env(safe-area-inset-right))',
        'bottom': 'max(16px, env(safe-area-inset-bottom))',
        'z-index': '50',
        'box-shadow': '0 8px 24px rgba(0, 0, 0, 0.45)',
        'transition': 'transform 0.15s ease, background-color 0.15s ease',
        // Scroll-driven reveal; browsers without support show it immediately.
        'animation': 'fab-reveal linear both',
        'animation-timeline': 'scroll(root)',
        'animation-range': '0 240px',
      },
    ),
    css.keyframes('fab-reveal', {
      'from': const Styles(raw: {'opacity': '0', 'visibility': 'hidden', 'translate': '0 16px'}),
      'to': const Styles(raw: {'opacity': '1', 'visibility': 'visible', 'translate': '0 0'}),
    }),
    css('.fab.fab--gone').styles(
      raw: {'opacity': '0 !important', 'visibility': 'hidden !important', 'pointer-events': 'none'},
    ),
    css('.fab:hover').styles(
      backgroundColor: const Color('#82D0FA'),
      raw: {'transform': 'translateY(-2px)'},
    ),
  ];
}
