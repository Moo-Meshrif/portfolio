class Package {
  const Package({required this.name, required this.description, required this.meta});

  final String name;
  final String description;
  final String meta;

  Package translated({required String description, required String meta}) =>
      Package(name: name, description: description, meta: meta);

  String get url => 'https://pub.dev/packages/$name';
}
