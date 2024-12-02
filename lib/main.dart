import 'package:flutter/material.dart';


import 'core/constants/proj_strings.dart';
import 'core/themes/themes.dart';
import 'presentation/routes/router_imports.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: ProjStrings.appName,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      routerConfig: _appRouter.config(),
    );
  }
}
