import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';
import 'package:retoweincode01/datasource/model/product_model.dart';

class ProductCard extends StatelessWidget {
  final Products products;
  const ProductCard({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    final totalStars = products.rate;
    String stars = '⭐' * totalStars;
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          )),
      child: Stack(
        children: [
          Center(
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: Image.asset(
                alignment: Alignment.center,
                fit: BoxFit.cover,
                products.image,
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 25,
            child: Text(
              products.type,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          const Positioned(
              bottom: 18,
              left: 10,
              child: Text(
                '\$ ',
                style: TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
              )),
          Positioned(
            left: 15,
            bottom: 15,
            child: Text(
              products.price,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: products.discount != '0'
                ? Container(
                    height: 20,
                    width: 45,
                    decoration: const BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                      child: Text(
                        products.discount,
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                : const Text(''),
          ),
          Positioned(
              top: -5,
              right: 0,
              child: products.isFavorite
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        size: 17,
                        Icons.favorite,
                        color: Colors.red,
                      ))
                  : IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        size: 17,
                        Icons.favorite_border_rounded,
                        color: AppColors.app2BrandLightBorderColor,
                      ))),
          const Positioned(
              bottom: 10,
              right: 10,
              child: Icon(
                Icons.add_circle,
                color: AppColors.app2BrandObjectsColor,
              )),
          Positioned(
            bottom: 5,
            left: 10,
            child: Text(
              stars,
              style: const TextStyle(fontSize: 7),
            ),
          )
        ],
      ),
    );
  }
}
