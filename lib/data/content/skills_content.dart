import 'package:portfolio/data/models/skill_group.dart';

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
