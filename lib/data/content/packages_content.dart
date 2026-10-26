import 'package:portfolio/data/models/package.dart';

const openSourceSubtitle = 'Four packages on pub.dev, built from problems I hit in production.';

const packages = <Package>[
  Package(
    name: 'video_flux',
    description:
        'Player-agnostic sliding-window video preloader for TikTok/Reels-style feeds. Keeps only nearby '
        'controllers alive and adapts to device tier and memory pressure.',
    meta: 'Video feeds · Adaptive preloading',
  ),
  Package(
    name: 'flavor_cli',
    description:
        'Dart CLI that automates Flutter flavor setup for Android and iOS — Gradle, Xcode schemes and '
        'configs — removing hours of multi-environment boilerplate.',
    meta: 'CLI · Android & iOS',
  ),
  Package(
    name: 'resource_state_builder',
    description:
        'Declarative widget for async resource states — loading, success, error, empty — with clean, '
        'type-safe UI handling.',
    meta: 'Widget · State',
  ),
  Package(
    name: 'app_sizer',
    description:
        'Responsive sizing utility for consistent layouts across phones, tablets and web without manual '
        'breakpoints.',
    meta: 'Responsive · Multi-platform',
  ),
];
