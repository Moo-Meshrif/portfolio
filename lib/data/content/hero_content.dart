import 'package:portfolio/data/models/stat.dart';
import 'package:portfolio/l10n/app_locale.dart';

const _statsEn = <Stat>[
  Stat(value: '~5 yrs', label: 'Shipping production Flutter apps'),
  Stat(value: '10+', label: 'Live apps on Play & App Store'),
  Stat(value: '4', label: 'Open-source packages on pub.dev'),
  Stat(value: '3', label: 'Egypt, Saudi Arabia, Iraq markets'),
];

const _statsAr = <Stat>[
  Stat(value: '5 سنوات', label: 'في إطلاق تطبيقات Flutter للإنتاج'),
  Stat(value: '10+', label: 'تطبيق منشور على Play وApp Store'),
  Stat(value: '4', label: 'حزم مفتوحة المصدر على pub.dev'),
  Stat(value: '3', label: 'أسواق: مصر والسعودية والعراق'),
];

List<Stat> statsFor(AppLocale locale) => locale == AppLocale.ar ? _statsAr : _statsEn;
