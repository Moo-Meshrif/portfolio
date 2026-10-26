import 'package:portfolio/data/models/project.dart';
import 'package:portfolio/l10n/app_locale.dart';

const projects = <Project>[
  Project(
    slug: 'itop',
    name: 'Itop',
    tag: 'Social + Marketplace',
    description:
        'Led the full native-to-Flutter rewrite, unifying two codebases. Voice recording, video playback, '
        'real-time feeds and an in-app services marketplace.',
    stack: ['Flutter', 'BLoC', 'Firebase', 'Clean Architecture'],
    stores: [Store.googlePlay, Store.appStore],
    playStoreUrl: 'https://play.google.com/store/apps/details?id=co.itplus.itop',
    appStoreUrl: 'https://apps.apple.com/eg/app/itop-app/id1468070816',
  ),
  Project(
    slug: 'sela-super-app',
    name: 'Sela Super App',
    tag: 'Saudi super app',
    description:
        'Added social, procurement and logistics modules to a live super app with zero disruption to '
        'existing users. Owned the Fastlane release pipeline.',
    stack: ['Flutter', 'Fastlane', 'Modular'],
    stores: [Store.googlePlay, Store.appStore],
    playStoreUrl: 'https://play.google.com/store/apps/details?id=sa.sela.superapp',
    appStoreUrl: 'https://apps.apple.com/eg/app/sela-super-app/id6504908987',
  ),
  Project(
    slug: 'sela-fhe',
    name: 'Sela FHE (Falcon Expo)',
    tag: 'Event app · Saudi Arabia',
    description:
        'Built from scratch as sole Flutter engineer, working directly with stakeholders on culturally '
        'specific design and API contracts.',
    stack: ['Flutter', 'Clean Architecture', 'BLoC'],
    stores: [Store.googlePlay, Store.appStore],
    playStoreUrl: 'https://play.google.com/store/apps/details?id=sa.sela.falconexpo',
    appStoreUrl: 'https://apps.apple.com/eg/app/fhe/id6751438319',
  ),
  Project(
    slug: 'insta-elsouq',
    name: 'Insta Elsouq',
    tag: 'Marketplace',
    description:
        'Dual-role customer / vendor platform with map-based service discovery, order tracking, social '
        'login and push notifications.',
    stack: ['Flutter', 'Google Maps', 'Firebase'],
    stores: [Store.googlePlay, Store.appStore],
    playStoreUrl: 'https://play.google.com/store/apps/details?id=co.itplus.dalilelsouqapp',
    appStoreUrl: 'https://apps.apple.com/eg/app/id6503652755',
  ),
  Project(
    slug: 'sareea-driver',
    name: 'Sareea Driver',
    tag: 'Logistics',
    description:
        'Persistent background GPS tracking with live delivery updates, reliable across app-state '
        'transitions and battery-optimized for long shifts.',
    stack: ['Flutter', 'Background location', 'Foreground service'],
    stores: [Store.appStore],
    appStoreUrl: 'https://apps.apple.com/eg/app/sareea-driver/id6741469369',
  ),
  Project(
    slug: 'observer-iraq',
    name: 'Observer Iraq',
    tag: 'News',
    description: 'Category-based news reader with client-side caching for fast loads and offline reading.',
    stack: ['Flutter', 'Caching', 'Offline'],
    stores: [Store.googlePlay, Store.appStore],
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.observerIraqapp.app',
    appStoreUrl: 'https://apps.apple.com/us/app/observer-iraq/id1639770348',
  ),
  Project(
    slug: 'cinderella',
    name: 'Cinderella',
    tag: 'Matchmaking',
    description: 'Took over an unstable app and fixed rendering bottlenecks, memory leaks and network inefficiencies.',
    stack: ['Flutter', 'DevTools', 'Performance'],
    stores: [Store.googlePlay],
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.cinderella.app',
  ),
];

const _arTexts = <String, ({String tag, String description})>{
  'itop': (
    tag: 'تواصل اجتماعي · خدمات إلكترونية',
    description:
        'قدت عملية إعادة تطوير التطبيق بالكامل باستخدام Flutter بدلًا من Native، '
        'لتوحيد تطوير نسختي Android وiOS ضمن Codebase واحدة. '
        'يشمل التطبيق تسجيل الرسائل الصوتية، وتشغيل الفيديوهات، '
        'والتحديثات اللحظية للمحتوى، إلى جانب منصة للخدمات داخل التطبيق.',
  ),

  'sela-super-app': (
    tag: 'تطبيق متعدد الخدمات · السعودية',
    description:
        'شاركت في تطوير التطبيق وإضافة خدمات جديدة تشمل التواصل الاجتماعي '
        'والمشتريات والخدمات اللوجستية، مع الحفاظ على استقرار '
        'الوظائف الحالية وتجربة المستخدم. '
        'كما توليت إدارة عمليات بناء ونشر الإصدارات باستخدام Fastlane.',
  ),

  'sela-fhe': (
    tag: 'فعاليات ومعارض · السعودية',
    description:
        'توليت تطوير التطبيق بالكامل باستخدام Flutter من البداية وحتى الإطلاق، '
        'مع التنسيق المباشر مع فريق المشروع لتصميم تجربة مستخدم '
        'تناسب طبيعة الفعالية ومتطلباتها، '
        'والعمل على تكامل التطبيق مع خدمات Backend APIs.',
  ),

  'insta-elsouq': (
    tag: 'تجارة إلكترونية · خدمات',
    description:
        'تطبيق يجمع العملاء ومقدمي الخدمات في منصة واحدة، '
        'ويتيح البحث عن الخدمات القريبة باستخدام الخرائط، '
        'ومتابعة الطلبات، وتسجيل الدخول بحسابات التواصل الاجتماعي، '
        'واستقبال الإشعارات الفورية.',
  ),

  'sareea-driver': (
    tag: 'توصيل · خدمات لوجستية',
    description:
        'تطوير نظام لتتبع مواقع السائقين باستخدام GPS '
        'حتى أثناء عمل التطبيق في الخلفية، '
        'مع تحديث حالة التوصيل لحظيًا. '
        'تم التركيز على استقرار التتبع عند انتقال التطبيق '
        'بين حالاته المختلفة وتقليل استهلاك البطارية '
        'خلال فترات العمل الطويلة.',
  ),

  'observer-iraq': (
    tag: 'أخبار · محتوى رقمي',
    description:
        'تطبيق إخباري يعرض الأخبار حسب التصنيفات المختلفة، '
        'مع استخدام Caching لتسريع عرض المحتوى '
        'وإتاحة قراءة الأخبار المحفوظة دون اتصال بالإنترنت.',
  ),

  'cinderella': (
    tag: 'تعارف وزواج',
    description:
        'عملت على تحسين استقرار التطبيق ومعالجة مشكلات الأداء، '
        'بما يشمل تحسين Rendering، وإصلاح Memory Leaks، '
        'وتقليل طلبات الشبكة غير الضرورية '
        'لتحسين سرعة التطبيق واستجابته.',
  ),
};

List<Project> projectsFor(AppLocale locale) {
  if (locale == AppLocale.en) return projects;
  return [
    for (final p in projects) p.translated(tag: _arTexts[p.slug]!.tag, description: _arTexts[p.slug]!.description),
  ];
}
