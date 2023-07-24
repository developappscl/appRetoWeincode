import 'package:flutter/material.dart';

class CardStudy extends StatelessWidget {
  final double height;
  final double width;
  final String imageAsset;
  final String title;
  final String subTitle;
  final Color backGroundcolor;

  const CardStudy({
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
      decoration: BoxDecoration(
        color: backGroundcolor,
      ),
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            subTitle,
            style: TextStyle(color: Colors.white),
          ),
          Image.asset(
            imageAsset,
            width: 50,
            height: 50,
          )
        ],
      ),
    );
  }
}
