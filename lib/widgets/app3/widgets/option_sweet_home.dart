import 'package:flutter/material.dart';

class OptionSweet extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const OptionSweet({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          width: 60,
          height: 60,
          image,
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
