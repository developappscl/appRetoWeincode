import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';
import 'package:retoweincode01/widgets/home_app_bar.dart';

class App1Screen extends StatelessWidget {
  const App1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeApp1(isDarkMode: false).defaultTheme(),
      home: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: HomeAppBar(),
      ),
    );
  }
}
