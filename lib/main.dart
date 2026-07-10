import 'package:flutter/material.dart';

import 'injection/injection.dart';
import 'film_gallery_app.dart';

  void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  runApp(const MyApp());
}
