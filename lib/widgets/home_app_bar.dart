import 'package:flutter/material.dart';
import 'package:retoweincode01/config/color/app_colors.dart';

import 'widgets.dart';

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
