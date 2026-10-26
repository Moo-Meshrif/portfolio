import 'package:portfolio/data/models/package.dart';
import 'package:portfolio/l10n/app_locale.dart';

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

const _arTexts = <String, ({String description, String meta})>{
  'video_flux': (
    description:
        'Package لتحسين أداء الفيديو في تطبيقات شبيهة بـ TikTok وReels، '
        'تعتمد على التحميل المسبق للفيديوهات القريبة من المستخدم '
        'وإدارة Video Controllers بذكاء لتقليل استهلاك الذاكرة، '
        'مع ضبط الأداء تلقائيًا حسب إمكانيات الجهاز والذاكرة المتاحة.',
    meta: 'Video Feeds · Preloading · Performance',
  ),

  'flavor_cli': (
    description:
        'أداة CLI لتجهيز Flutter Flavors على Android وiOS تلقائيًا، '
        'بما يشمل إعدادات Gradle وXcode، '
        'لتوفير الوقت وتقليل الإعدادات اليدوية المتكررة '
        'عند العمل على بيئات مختلفة مثل Development وProduction.',
    meta: 'CLI · Flutter Flavors · Automation',
  ),

  'resource_state_builder': (
    description:
        'Widget لتبسيط التعامل مع حالات البيانات غير المتزامنة، '
        'مثل Loading وSuccess وError وEmpty، '
        'مما يساعد على تنظيم كود الواجهة وتقليل التكرار '
        'مع الحفاظ على Type Safety.',
    meta: 'Widget · State Management · Async UI',
  ),

  'app_sizer': (
    description:
        'Package لتسهيل بناء واجهات Responsive على Flutter، '
        'من خلال توفير أحجام متناسقة تتكيف مع الشاشات المختلفة، '
        'سواء على الموبايل أو التابلت أو الويب، '
        'دون الحاجة إلى تحديد Breakpoints يدويًا.',
    meta: 'Responsive UI · Adaptive Layouts',
  ),
};

List<Package> packagesFor(AppLocale locale) {
  if (locale == AppLocale.en) return packages;
  return [
    for (final p in packages) p.translated(description: _arTexts[p.name]!.description, meta: _arTexts[p.name]!.meta),
  ];
}
