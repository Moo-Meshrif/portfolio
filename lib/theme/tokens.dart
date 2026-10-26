import 'package:jaspr/dom.dart';

abstract final class Palette {
  static const background = Color('#0D1014');
  static const surface = Color('#13171D');
  static const surface2 = Color('#181D24');
  static const chip = Color('#1C222A');

  static const borderCard = Color('#232830');
  static const borderRule = Color('#1E232A');
  static const borderOutline = Color('#2E3540');
  static const borderDashed = Color('#303845');

  static const textPrimary = Color('#E9E7E2');
  static const textSecondary = Color('#A7AFB9');
  static const textMuted = Color('#8A939E');
  static const textChip = Color('#C9CFD6');

  static const accent = Color('#5BC0F8');
  static const onAccent = Color('#0D1014');
}

abstract final class Fonts {
  static const heading = FontFamily.list([FontFamily('Bricolage Grotesque'), FontFamilies.sansSerif]);
  static const body = FontFamily.list([FontFamily('Inter'), FontFamilies.sansSerif]);
  static const mono = FontFamily.list([FontFamily('JetBrains Mono'), FontFamilies.monospace]);

  static const googleFontsUrl =
      'https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:wght@500;700'
      '&family=Inter:wght@400;500;600&family=JetBrains+Mono:wght@400;500&display=swap';
}

abstract final class Layout {
  static const containerMax = Unit.pixels(1200);
  static const gutter = Unit.expression('clamp(20px, 5vw, 48px)');
  static const sectionY = Unit.expression('clamp(64px, 9vw, 112px)');
  static const gridGap = Unit.pixels(24);
  static const touchTarget = Unit.pixels(44);
}

abstract final class Radii {
  static const card = Unit.pixels(20);
  static const pill = Unit.pixels(999);
  static const placeholder = Unit.pixels(12);
  static const monogram = Unit.pixels(10);
}
