enum Store {
  googlePlay('Google Play'),
  appStore('App Store');

  const Store(this.label);

  final String label;
}

class Project {
  const Project({
    required this.slug,
    required this.name,
    required this.tag,
    required this.description,
    required this.stack,
    required this.stores,
    this.playStoreUrl,
    this.appStoreUrl,
  });

  final String slug;
  final String name;
  final String tag;
  final String description;
  final List<String> stack;
  final List<Store> stores;
  final String? playStoreUrl;
  final String? appStoreUrl;

  String? urlFor(Store store) => switch (store) {
    Store.googlePlay => playStoreUrl,
    Store.appStore => appStoreUrl,
  };
}
