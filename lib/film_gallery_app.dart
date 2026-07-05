import 'package:film_gallery/uikit/scaffold_with_nav/routes.dart';
import 'package:flutter/material.dart';

import 'package:film_gallery/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: lightTheme,
      routerConfig: appRouter
    );
  }
}