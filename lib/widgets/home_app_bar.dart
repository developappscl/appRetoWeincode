import 'package:flutter/material.dart';
import 'package:retoweincode01/config/color/app_colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconAction(
            iconButton: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.grid_view,
            color: AppColors.app1BrandLightBorderColor,
          ),
        )),
        const Expanded(
          child: Text(''),
        ),
        IconAction(
            iconButton: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_sharp,
            color: AppColors.app1BrandLightBorderColor,
          ),
        )),
      ],
    );
  }
}

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
