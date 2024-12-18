import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/proj_strings.dart';
import 'core/themes/themes.dart';
import 'presentation/routes/router_imports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: ProjStrings.appName,
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            routerConfig: _appRouter.config(),
          );
        });
  }
}
