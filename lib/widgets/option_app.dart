import 'package:flutter/material.dart';

class OptionApp extends StatelessWidget {
  final double height;
  final double width;
  final String imageAsset;
  final String title;
  final String subTitle;
  final Color backGroundcolor;

  const OptionApp({
    super.key,
    required this.height,
    required this.width,
    required this.imageAsset,
    required this.title,
    required this.subTitle,
    required this.backGroundcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: backGroundcolor,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            )),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Image.asset(
            alignment: Alignment.centerRight,
            imageAsset,
            height: 200,
            width: 180,
          ),
          Positioned(
            top: 15,
            left: 10,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 35,
            left: 10,
            child: Text(
              subTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
          )
        ]));
  }
}
