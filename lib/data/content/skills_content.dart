import 'package:portfolio/data/models/skill_group.dart';
import 'package:portfolio/l10n/app_locale.dart';

const skillGroups = <SkillGroup>[
  SkillGroup(
    label: 'Languages & frameworks',
    items: ['Dart', 'Flutter (Android, iOS, Web)', 'Responsive & adaptive layouts', 'Kotlin & Swift platform channels'],
  ),
  SkillGroup(
    label: 'Architecture',
    items: [
      'Clean Architecture',
      'Feature-first',
      'MVVM',
      'SOLID',
      'Repository & Use-case layers',
      'Dependency Injection (get_it, injectable)',
    ],
  ),
  SkillGroup(label: 'State management', items: ['BLoC / Cubit', 'Riverpod', 'Provider', 'GetX']),
  SkillGroup(
    label: 'Networking & data',
    items: ['REST APIs', 'Dio', 'Retrofit', 'Freezed', 'json_serializable', 'Hive', 'Sqflite', 'SharedPreferences'],
  ),
  SkillGroup(
    label: 'Backend & cloud',
    items: ['Firebase (Auth, Firestore, FCM, Analytics, Crashlytics)', 'Supabase'],
  ),
  SkillGroup(
    label: 'Platform integrations',
    items: [
      'In-app purchases & subscriptions (StoreKit, Google Play Billing)',
      'Background location & foreground services',
      'Google Maps / flutter_map',
      'Payment gateways',
      'Deep links',
    ],
  ),
  SkillGroup(
    label: 'Testing',
    items: [
      'Unit, widget & integration tests',
      'bloc_test',
      'mocktail / mockito',
      'Golden tests',
      'Test coverage in CI',
    ],
  ),
  SkillGroup(
    label: 'Performance & quality',
    items: [
      'Flutter DevTools profiling',
      'Memory-leak & jank analysis',
      'Video preloading & controller lifecycle',
      'Code reviews',
      'Null-safety migration',
    ],
  ),
  SkillGroup(
    label: 'DevOps & tooling',
    items: [
      'Fastlane',
      'GitHub Actions',
      'Flavors / multi-environment builds',
      'App Store & Play Store release',
    ],
  ),
  SkillGroup(
    label: 'Leadership & teamwork',
    items: [
      'Technical leadership',
      'Mentoring',
      'Code reviews',
      'Task estimation',
    ],
  ),
  SkillGroup(
    label: 'AI-assisted engineering',
    items: ['Claude Code', 'Codex'],
  ),
];

const _skillGroupsAr = <SkillGroup>[
  SkillGroup(
    label: 'لغات البرمجة وأطر العمل',
    items: [
      'Dart',
      'Flutter (Android, iOS, Web)',
      'Responsive & Adaptive UI',
      'Platform Channels (Kotlin, Swift)',
    ],
  ),
  SkillGroup(
    label: 'تصميم وهيكلة التطبيقات',
    items: [
      'Clean Architecture',
      'Feature-First Architecture',
      'MVVM',
      'SOLID Principles',
      'Repository & Use Case Patterns',
      'Dependency Injection (get_it, injectable)',
    ],
  ),
  SkillGroup(
    label: 'إدارة الحالة',
    items: [
      'BLoC / Cubit',
      'Riverpod',
      'Provider',
      'GetX',
    ],
  ),
  SkillGroup(
    label: 'التعامل مع البيانات والـ APIs',
    items: [
      'REST APIs',
      'Dio',
      'Retrofit',
      'Freezed',
      'json_serializable',
      'Hive',
      'Sqflite',
      'SharedPreferences',
    ],
  ),
  SkillGroup(
    label: 'خدمات Backend وCloud',
    items: [
      'Firebase (Auth, Firestore, FCM, Analytics, Crashlytics)',
      'Supabase',
    ],
  ),
  SkillGroup(
    label: 'التكامل مع أنظمة وخدمات الجهاز',
    items: [
      'In-App Purchases & Subscriptions (StoreKit, Google Play Billing)',
      'Background Location & Foreground Services',
      'Google Maps / flutter_map',
      'Payment Gateway Integration',
      'Deep Linking',
    ],
  ),
  SkillGroup(
    label: 'اختبار التطبيقات',
    items: [
      'Unit, Widget & Integration Testing',
      'bloc_test',
      'mocktail / mockito',
      'Golden Testing',
      'Test Coverage in CI',
    ],
  ),
  SkillGroup(
    label: 'تحسين الأداء وجودة الكود',
    items: [
      'Flutter DevTools & Performance Profiling',
      'Memory Leak & Jank Analysis',
      'Video Preloading & Controller Lifecycle',
      'Code Reviews',
      'Null Safety Migration',
    ],
  ),
  SkillGroup(
    label: 'أدوات التطوير والنشر',
    items: [
      'Fastlane',
      'GitHub Actions',
      'Flavors & Multi-Environment Builds',
      'App Store & Google Play Deployment',
    ],
  ),
  SkillGroup(
    label: 'القيادة والتعاون مع الفريق',
    items: [
      'Technical Leadership',
      'Mentoring',
      'Code Reviews',
      'Task Estimation',
    ],
  ),
  SkillGroup(
    label: 'أدوات الذكاء الاصطناعي للتطوير',
    items: [
      'Claude Code',
      'Codex',
    ],
  ),
];

List<SkillGroup> skillGroupsFor(AppLocale locale) => locale == AppLocale.ar ? _skillGroupsAr : skillGroups;
