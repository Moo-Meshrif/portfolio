class Package {
  const Package({required this.name, required this.description, required this.meta});

  final String name;
  final String description;
  final String meta;

  String get url => 'https://pub.dev/packages/$name';
}
