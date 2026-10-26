import 'dart:io';

const _extensions = ['.png', '.jpg', '.jpeg', '.webp', '.avif'];

/// Returns the web paths of up to [limit] images in `web/images/projects/<slug>/`, sorted by name.
/// Runs on the server during pre-rendering, where the project root is the working directory.
List<String> screenshotsFor(String slug, {int limit = 3}) {
  final dir = Directory('web/images/projects/$slug');
  if (!dir.existsSync()) return const [];
  final names =
      dir
          .listSync()
          .whereType<File>()
          .map((f) => f.uri.pathSegments.last)
          .where((n) => _extensions.any(n.toLowerCase().endsWith))
          .toList()
        ..sort();
  return [for (final n in names.take(limit)) 'images/projects/$slug/$n'];
}
