import 'package:portfolio/l10n/app_locale.dart';

class Strings {
  const Strings({
    required this.siteName,
    required this.siteTitle,
    required this.siteDescription,
    required this.nav,
    required this.heroAccent,
    required this.heroRest,
    required this.viewWork,
    required this.downloadCv,
    required this.workTitle,
    required this.workSubtitle,
    required this.openSourceTitle,
    required this.openSourceSubtitle,
    required this.experienceTitle,
    required this.skillsTitle,
    required this.openIn,
    required this.screenshotsSoon,
    required this.stackLabel,
    required this.footerCopyright,
    required this.photoAlt,
    required this.backToTopLabel,
    required this.contactTitle,
    required this.contactSubtitle,
    required this.contactEmail,
    required this.contactPhone,
    required this.switchAria,
    required this.homeAria,
    required this.primaryNavAria,
    required this.menuAria,
    required this.cvDownloadName,
    required this.screenshotAlt,
    required this.storeAria,
  });

  final String siteName;
  final String siteTitle;
  final String siteDescription;
  final List<({String label, String id})> nav;
  final String heroAccent;
  final String heroRest;
  final String viewWork;
  final String downloadCv;
  final String workTitle;
  final String workSubtitle;
  final String openSourceTitle;
  final String openSourceSubtitle;
  final String experienceTitle;
  final String skillsTitle;
  final String openIn;
  final String screenshotsSoon;
  final String stackLabel;
  final String footerCopyright;
  final String photoAlt;
  final String backToTopLabel;
  final String contactTitle;
  final String contactSubtitle;
  final String contactEmail;
  final String contactPhone;

  final String switchAria;
  final String homeAria;
  final String primaryNavAria;
  final String menuAria;
  final String cvDownloadName;
  final String Function(String project, int n) screenshotAlt;
  final String Function(String project, String store) storeAria;

  static Strings of(AppLocale locale) => locale == AppLocale.ar ? _ar : _en;
}

final _en = Strings(
  siteName: 'Mohamed Meshrif',
  siteTitle: 'Mohamed Meshrif — Senior Flutter Engineer',
  siteDescription:
      'Nearly 5 years taking marketplace, social, super-app, logistics and news apps from architecture to '
      'App Store and Google Play, for clients in Egypt, Saudi Arabia and Iraq.',
  nav: const [
    (label: 'Work', id: 'work'),
    (label: 'Open source', id: 'open-source'),
    (label: 'Experience', id: 'experience'),
    (label: 'Skills', id: 'skills'),
    (label: 'Contact', id: 'contact'),
  ],
  heroAccent: 'Senior Flutter Engineer',
  heroRest: ' delivering production-grade mobile apps, from architecture to release.',
  viewWork: 'View my work',
  downloadCv: 'Download CV',
  workTitle: 'Selected work',
  workSubtitle: "A few highlights from the apps I've shipped to Google Play and the App Store.",
  openSourceTitle: 'Open source',
  openSourceSubtitle: 'Four packages on pub.dev, built from problems I hit in production.',
  experienceTitle: 'Experience',
  skillsTitle: 'Skills',
  openIn: 'Open in',
  screenshotsSoon: 'Screenshots soon',
  stackLabel: 'Stack',
  footerCopyright: '© 2026 Mohamed Meshrif',
  photoAlt: 'Portrait of Mohamed Meshrif',
  backToTopLabel: 'Back to top',
  contactTitle: 'Contact',
  contactSubtitle: 'Reach me through any of the channels below.',
  contactEmail: 'Email',
  contactPhone: 'Phone',
  switchAria: 'عرض الموقع بالعربية',
  homeAria: 'Mohamed Meshrif — home',
  primaryNavAria: 'Primary',
  menuAria: 'Menu',
  cvDownloadName: 'Mohamed-Meshrif-CV.pdf',
  screenshotAlt: (project, n) => '$project screenshot $n',
  storeAria: (project, store) => '$project on $store',
);

final _ar = Strings(
  siteName: 'محمد مشرف',
  siteTitle: 'محمد مشرف | Senior Flutter Engineer',
  siteDescription:
      'مطور Flutter بخبرة تقارب 5 سنوات في بناء تطبيقات الموبايل '
      'وتطوير حلول برمجية لمجالات متنوعة، منها التجارة الإلكترونية '
      'والتواصل الاجتماعي والخدمات اللوجستية والأخبار. '
      'عملت على مشاريع في مصر والسعودية والعراق، وشاركت في تطوير '
      'تطبيقات من مرحلة التخطيط وحتى نشرها على المتاجر.',

  nav: const [
    (label: 'أعمالي', id: 'work'),
    (label: 'Open Source', id: 'open-source'),
    (label: 'خبراتي', id: 'experience'),
    (label: 'مهاراتي', id: 'skills'),
    (label: 'تواصل معي', id: 'contact'),
  ],

  heroAccent: 'مهندس برمجيات Senior متخصص في Flutter',
  heroRest:
      '، أحوّل الأفكار إلى تطبيقات عملية وسريعة ومستقرة، '
      'مع الاهتمام بجودة الكود وتجربة المستخدم.',

  viewWork: 'اكتشف أعمالي',
  downloadCv: 'تحميل السيرة الذاتية',

  workTitle: 'مشاريع عملت عليها',
  workSubtitle:
      'نماذج من التطبيقات التي شاركت في بنائها وتطويرها، '
      'وأصبحت متاحة للمستخدمين على App Store وGoogle Play.',

  openSourceTitle: 'مساهماتي في Open Source',
  openSourceSubtitle:
      'طورت ونشرت 4 حزم على pub.dev لتسهيل مهام متكررة '
      'وحل مشكلات واجهتني خلال عملي على مشاريع فعلية.',

  experienceTitle: 'رحلتي المهنية',
  skillsTitle: 'التقنيات التي أعمل بها',

  openIn: 'متاح على',
  screenshotsSoon: 'صور التطبيق قريبًا',
  stackLabel: 'التقنيات',

  footerCopyright: '© 2026 محمد مشرف. جميع الحقوق محفوظة.',

  photoAlt: 'صورة شخصية لمحمد مشرف',
  backToTopLabel: 'العودة للأعلى',

  contactTitle: 'خلّينا على تواصل',
  contactSubtitle: 'يسعدني تواصلك معي عبر أي من الوسائل التالية.',
  contactEmail: 'البريد الإلكتروني',
  contactPhone: 'رقم الهاتف',

  switchAria: 'Switch to English',
  homeAria: 'محمد مشرف - الرئيسية',
  primaryNavAria: 'القائمة الرئيسية',
  menuAria: 'فتح القائمة',
  cvDownloadName: 'Mohamed-Meshrif-CV.pdf',

  screenshotAlt: (project, n) => 'صورة $n من $project',

  storeAria: (project, store) => 'تصفح $project على $store',
);
