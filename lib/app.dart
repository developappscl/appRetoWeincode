import 'package:flutter/material.dart';

import 'config/config.dart';

class AppReto extends StatelessWidget {
  const AppReto({super.key});

  @override
  Widget build(BuildContext context) {
    const bool isDarkMode = false;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: AppThemeMain(isDarkMode: isDarkMode).defaultTheme(),
    );
  }
}
