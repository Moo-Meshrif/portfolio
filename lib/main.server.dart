/// The entrypoint for the **server** environment, used for static pre-rendering.
library;

import 'package:jaspr/server.dart';

import 'app.dart';
// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);
  runApp(buildApp());
}
