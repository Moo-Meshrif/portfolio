import 'package:portfolio/data/models/job.dart';

const jobs = <Job>[
  Job(
    dates: 'Aug 2025 – Present',
    role: 'Senior Flutter Developer',
    company: 'Spark Systems',
    location: 'El Sheikh Zayed',
    highlights: [
      'Own the Flutter architecture for new product lines: feature-first Clean Architecture, BLoC/Cubit and DI '
          'with get_it/injectable.',
      'Unit, bloc, widget and integration tests running in CI to catch regressions before release.',
      'Mason brick templates that generate full feature modules in seconds, standardizing structure across the '
          'codebase.',
      'Introduced AI-assisted workflows (Claude Code rules & skills) that encode team conventions and improve '
          'review consistency.',
    ],
  ),
  Job(
    dates: 'Mar 2022 – Aug 2025',
    role: 'Flutter Developer',
    company: 'IT PLUS – Programming Solutions',
    location: 'El Sheikh Zayed',
    highlights: [
      'Shipped many cross-platform apps to Google Play and the App Store, serving thousands of active users.',
      'Led the native-to-Flutter rewrite of the flagship social-marketplace app, Itop, with full feature parity.',
      'Built Fastlane pipelines for iOS and Android, turning manual releases into a one-command process.',
      'Engineered background GPS tracking and real-time driver–merchant sync for a logistics platform.',
      'Drove Clean Architecture, BLoC and a large-scale null-safety migration as company standards.',
    ],
  ),
];

const education = Education(
  dates: '2015 – 2020',
  degree: 'B.Sc. Electronics & Communications Engineering',
  school: 'Zagazig University, Egypt',
  languages: 'Arabic (native), English (professional)',
);
