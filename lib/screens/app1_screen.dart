import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';

import '../widgets/widgets.dart';

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
        toolbarHeight: 90,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(16, 35, 16, 12),
          child: HomeAppBar(),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 29, top: 20, right: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your Favorite',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Text(
              'course Here!',
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(95, 50, 245, 1)),
            )
          ],
        ),
      ),
    );
  }
}
