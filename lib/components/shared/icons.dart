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
  const ArrowRightIcon({this.size = 18, super.key});

  final double size;

  @override
  Component build(BuildContext context) {
    return svg(
      viewBox: '0 0 24 24',
      width: Unit.pixels(size),
      height: Unit.pixels(size),
      attributes: _strokeAttributes,
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
