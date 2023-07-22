import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';

class App3Screen extends StatelessWidget {
  const App3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeApp3(isDarkMode: false).defaultTheme(),
    );
  }
}
