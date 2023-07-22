import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';

class App2Screen extends StatelessWidget {
  const App2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeApp2(isDarkMode: false).defaultTheme(),
    );
  }
}
