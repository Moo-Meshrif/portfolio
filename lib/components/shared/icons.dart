import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

const _strokeAttributes = {
  'aria-hidden': 'true',
  'focusable': 'false',
  'fill': 'none',
  'stroke': 'currentColor',
  'stroke-width': '2',
  'stroke-linecap': 'round',
  'stroke-linejoin': 'round',
};

class ArrowRightIcon extends StatelessComponent {
  const ArrowRightIcon({this.size = 18, this.flip = false, super.key});

  final double size;

  /// Mirrors the arrow in right-to-left layouts.
  final bool flip;

  @override
  Component build(BuildContext context) {
    return svg(
      viewBox: '0 0 24 24',
      width: Unit.pixels(size),
      height: Unit.pixels(size),
      attributes: flip ? {..._strokeAttributes, 'class': 'rtl-flip'} : _strokeAttributes,
      [path(d: 'M5 12h14M13 6l6 6-6 6', [])],
    );
  }
}

class ArrowUpRightIcon extends StatelessComponent {
  const ArrowUpRightIcon({this.size = 20, super.key});

  final double size;

  @override
  Component build(BuildContext context) {
    return svg(
      viewBox: '0 0 24 24',
      width: Unit.pixels(size),
      height: Unit.pixels(size),
      attributes: _strokeAttributes,
      [path(d: 'M7 17L17 7M8 7h9v9', [])],
    );
  }
}

class MenuIcon extends StatelessComponent {
  const MenuIcon({this.size = 22, super.key});

  final double size;

  @override
  Component build(BuildContext context) {
    return svg(
      viewBox: '0 0 24 24',
      width: Unit.pixels(size),
      height: Unit.pixels(size),
      attributes: {..._strokeAttributes, 'class': 'icon-menu'},
      [path(d: 'M4 7h16M4 12h16M4 17h16', [])],
    );
  }
}

class CloseIcon extends StatelessComponent {
  const CloseIcon({this.size = 22, super.key});

  final double size;

  @override
  Component build(BuildContext context) {
    return svg(
      viewBox: '0 0 24 24',
      width: Unit.pixels(size),
      height: Unit.pixels(size),
      attributes: {..._strokeAttributes, 'class': 'icon-close'},
      [path(d: 'M6 6l12 12M18 6L6 18', [])],
    );
  }
}

class ArrowUpIcon extends StatelessComponent {
  const ArrowUpIcon({this.size = 24, super.key});

  final double size;

  @override
  Component build(BuildContext context) {
    return svg(
      viewBox: '0 0 24 24',
      width: Unit.pixels(size),
      height: Unit.pixels(size),
      attributes: _strokeAttributes,
      [path(d: 'M12 19V5M6 11l6-6 6 6', [])],
    );
  }
}
