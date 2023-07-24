import 'package:flutter/material.dart';

import '../config/config.dart';

class IconAction extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? configMargin;
  const IconAction({super.key, required this.iconButton, this.configMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: configMargin,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.app1BrandLightBorderColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          )),
      child: iconButton,
    );
  }
}
