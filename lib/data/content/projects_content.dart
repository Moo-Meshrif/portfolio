import 'package:portfolio/data/models/project.dart';

const workSubtitle = "A few highlights from the apps I've shipped to Google Play and the App Store.";

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
