import 'package:portfolio/data/models/job.dart';
import 'package:portfolio/l10n/app_locale.dart';

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

const _jobsAr = <Job>[
  Job(
    dates: 'أغسطس 2025 – حتى الآن',
    role: 'Senior Flutter Developer',
    company: 'Spark Systems',
    location: 'الشيخ زايد، الجيزة',
    highlights: [
      'مسؤول عن تصميم وتطوير البنية المعمارية لتطبيقات Flutter الجديدة، '
          'باستخدام Clean Architecture وFeature-First Structure، '
          'مع BLoC/Cubit وDependency Injection.',

      'تطبيق اختبارات Unit وBLoC وWidget وIntegration '
          'وربطها بـ CI لاكتشاف المشكلات مبكرًا '
          'والحفاظ على استقرار التطبيقات قبل إصدارها.',

      'تطوير قوالب جاهزة باستخدام Mason لإنشاء مكونات '
          'الميزات الجديدة تلقائيًا، مما يسرّع عملية التطوير '
          'ويساعد على توحيد تنظيم الكود بين المشاريع.',

      'توظيف أدوات الذكاء الاصطناعي مثل Claude Code '
          'في تحسين سير العمل، من خلال إعداد Rules وSkills '
          'تساعد على الالتزام بمعايير الفريق '
          'وتحسين جودة مراجعة الكود.',
    ],
  ),
  Job(
    dates: 'مارس 2022 – أغسطس 2025',
    role: 'Flutter Developer',
    company: 'IT PLUS – Programming Solutions',
    location: 'الشيخ زايد، الجيزة',
    highlights: [
      'المشاركة في تطوير وإطلاق العديد من تطبيقات الموبايل '
          'على Google Play وApp Store، '
          'والتي يستخدمها آلاف المستخدمين.',

      'قيادة عملية إعادة بناء تطبيق Itop باستخدام Flutter '
          'بدلًا من Native، مع الحفاظ على جميع الوظائف '
          'والمميزات الأساسية للتطبيق.',

      'إعداد أنظمة CI/CD باستخدام Fastlane '
          'لأتمتة عمليات بناء ونشر تطبيقات iOS وAndroid، '
          'وتقليل الخطوات اليدوية المطلوبة لكل إصدار.',

      'تطوير نظام لتتبع مواقع السائقين في الخلفية باستخدام GPS، '
          'مع تحديث البيانات لحظيًا بين السائقين والتجار '
          'ضمن منصة للخدمات اللوجستية.',

      'المساهمة في اعتماد Clean Architecture وBLoC '
          'كمعايير أساسية لتطوير المشاريع، '
          'إلى جانب تحديث مشاريع كبيرة لدعم Null Safety.',
    ],
  ),
];

const _educationAr = Education(
  dates: '2015 – 2020',
  degree: 'بكالوريوس هندسة الإلكترونيات والاتصالات',
  school: 'جامعة الزقازيق، مصر',
  languages: 'العربية (اللغة الأم) · الإنجليزية (مستوى مهني)',
);

List<Job> jobsFor(AppLocale locale) => locale == AppLocale.ar ? _jobsAr : jobs;

Education educationFor(AppLocale locale) => locale == AppLocale.ar ? _educationAr : education;
