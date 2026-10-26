import 'package:jaspr/dom.dart';

import 'package:portfolio/theme/tokens.dart';

const _labelSpacing = Unit.expression('0.08em');

Border _outline(Color color) => Border.all(style: .solid, color: color, width: 1.px);

List<StyleRule> get globalStyles => [
  css('*, *::before, *::after').styles(boxSizing: .borderBox),
  css('html').styles(raw: {'scroll-behavior': 'smooth', '-webkit-text-size-adjust': '100%'}),
  css('body').styles(
    minHeight: 100.vh,
    margin: .zero,
    color: Palette.textPrimary,
    fontFamily: Fonts.body,
    fontSize: 16.px,
    lineHeight: const Unit.expression('1.6'),
    backgroundColor: Palette.background,
    raw: {
      'overflow-x': 'hidden',
      '-webkit-font-smoothing': 'antialiased',
      '-moz-osx-font-smoothing': 'grayscale',
      'text-rendering': 'optimizeLegibility',
      'font-feature-settings': "'kern', 'liga', 'calt'",
    },
  ),
  css('h1, h2, h3, p, ul').styles(padding: .zero, margin: .zero),
  css('h1, h2, h3').styles(fontFamily: Fonts.heading, fontWeight: .w700, raw: {'text-wrap': 'balance'}),
  css('ul').styles(listStyle: .none),
  // Arabic: letter-spacing breaks letter joining.
  css('html[lang="ar"] .hero h1').styles(raw: {'line-height': '1.3', 'font-size': 'clamp(28px, 4.6vw, 54px)'}),
  css('html[lang="ar"] h2, html[lang="ar"] h3').styles(raw: {'line-height': '1.3'}),
  css('html[lang="ar"] *').styles(raw: {'letter-spacing': 'normal !important'}),
  css('html[dir="rtl"] .rtl-flip').styles(raw: {'transform': 'scaleX(-1)'}),
  css('a').styles(color: .inherit, textDecoration: .none, raw: {'transition': 'color .15s, border-color .15s'}),
  css('a:focus-visible').styles(
    radius: .circular(6.px),
    outline: Outline(color: Palette.accent, style: .solid, width: OutlineWidth(2.px), offset: 3.px),
  ),
  css('svg').styles(raw: {'flex-shrink': '0'}),
  css('img').styles(display: .block, maxWidth: 100.percent),
  css('::selection').styles(color: Palette.onAccent, backgroundColor: Palette.accent),

  css('.container').styles(
    width: 100.percent,
    maxWidth: Layout.containerMax,
    padding: .symmetric(horizontal: Layout.gutter),
    margin: .symmetric(horizontal: .auto),
  ),
  css('.mono').styles(
    fontFamily: Fonts.mono,
    fontSize: 13.px,
    fontWeight: .w500,
    textTransform: .upperCase,
    letterSpacing: _labelSpacing,
  ),
  css('.mono-accent').styles(color: Palette.accent),
  css('.pill').styles(
    display: .inlineFlex,
    minHeight: Layout.touchTarget,
    padding: .symmetric(horizontal: 22.px),
    border: _outline(Palette.borderOutline),
    radius: .circular(Radii.pill),
    justifyContent: .center,
    alignItems: .center,
    gap: .all(8.px),
    color: Palette.textPrimary,
    fontSize: 15.px,
    fontWeight: .w500,
    whiteSpace: .noWrap,
  ),
  css('.pill:hover').styles(border: _outline(Palette.accent), color: Palette.accent),
  css('.pill--accent').styles(
    border: _outline(Palette.accent),
    color: Palette.onAccent,
    fontWeight: .w600,
    backgroundColor: Palette.accent,
  ),
  css('.pill--accent:hover').styles(
    border: _outline(const Color('#82D0FA')),
    color: Palette.onAccent,
    backgroundColor: const Color('#82D0FA'),
  ),
  css('.chip').styles(
    display: .inlineFlex,
    padding: .symmetric(vertical: 6.px, horizontal: 12.px),
    radius: .circular(Radii.pill),
    alignItems: .center,
    color: Palette.textChip,
    fontSize: 13.px,
    lineHeight: 1.3.em,
    backgroundColor: Palette.chip,
  ),
  css('.chip--outline').styles(
    padding: .symmetric(vertical: 8.px, horizontal: 14.px),
    border: _outline(Palette.borderOutline),
    backgroundColor: Colors.transparent,
  ),
  css('.chips').styles(display: .flex, flexWrap: .wrap, gap: .all(8.px)),
  css('.section').styles(
    padding: .symmetric(vertical: Layout.sectionY),
    // Cancels the section's top padding so a tapped nav link puts the heading at the top of the viewport.
    raw: {'scroll-margin-top': 'calc(24px - clamp(64px, 9vw, 112px))'},
  ),
];
