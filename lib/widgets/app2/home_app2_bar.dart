import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';

class HomeApp2Bar extends StatelessWidget {
  const HomeApp2Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 9),
      child: Row(
        children: [
          IconButton.filled(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              iconSize: 17,
              onPressed: () {},
              icon: const Icon(Icons.grid_view_rounded),
              color: AppColors.app2BrandObjectsColor),
          const Expanded(
            child: Text(''),
          ),
          IconButton.filled(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            iconSize: 15,
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_basket_sharp,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          const CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(
                'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
              )),
        ],
      ),
    );
  }
}
