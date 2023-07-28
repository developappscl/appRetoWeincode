import 'package:flutter/material.dart';

class FavoriteOptions extends StatelessWidget {
  final String image;
  final String status;
  final bool isActive;
  const FavoriteOptions({
    super.key,
    required this.image,
    required this.status,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isActive == true
            ? Colors.white
            : const Color.fromARGB(255, 248, 245, 245),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0,
            blurRadius: 0,
            offset: Offset(0.3, 0.1),
          )
        ],
      ),
      height: 50,
      width: 170,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            status,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
