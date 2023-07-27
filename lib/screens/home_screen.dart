import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retos Desing Apps'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Center(
              child: Text('Retos de Aplicaciones'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.push('/app1');
            },
            child: const Text('Ir App 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.push('/app2');
            },
            child: const Text('Ir App 2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Ir App 3'),
          )
        ],
      ),
    );
  }
}
