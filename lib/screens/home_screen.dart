import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:retoweincode01/widgets/option_app.dart';

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
              child: Text('Seleccione la Aplicacion para visualizar'),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.push('/app1');
            },
            child: const OptionApp(
              height: 150,
              width: 350,
              imageAsset: 'assets/images/app1.png',
              title: 'App 1',
              subTitle: 'Búsqueda de Cursos',
              backGroundcolor: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              context.push('/app2');
            },
            child: const OptionApp(
              height: 150,
              width: 350,
              imageAsset: 'assets/images/app2.png',
              title: 'App 2',
              subTitle: 'E-commerce',
              backGroundcolor: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              context.push('/app3');
            },
            child: const OptionApp(
              height: 150,
              width: 350,
              imageAsset: 'assets/images/app3.png',
              title: 'App 3',
              subTitle: 'Sweet Home\npuede navegar\ncon See all',
              backGroundcolor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
