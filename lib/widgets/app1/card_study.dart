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
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      height: height,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w200),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 5),
              child: Center(
                child: Image.asset(
                  imageAsset,
                  width: 80,
                  height: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
