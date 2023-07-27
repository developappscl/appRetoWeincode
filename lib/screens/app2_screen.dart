import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';
import 'package:retoweincode01/widgets/app2/home_app2_bar.dart';

import '../datasource/data/product_data.dart';
import '../widgets/app2/widgets/product_card.dart';

class App2Screen extends StatefulWidget {
  const App2Screen({super.key});

  @override
  State<App2Screen> createState() => _App2ScreenState();
}

class _App2ScreenState extends State<App2Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeApp2(isDarkMode: false).defaultTheme(),
      home: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app2BackgroundColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColors.app2BackgroundColor,
        toolbarHeight: 60,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 35, 0, 20),
          child: HomeApp2Bar(),
        ),
      ),
      body: Column(
        children: [
          _SearchView(),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 18, bottom: 20),
            child: _OrderView(),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 25, left: 25),
              child: _ProductList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 0.87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: TextFormField(
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 15),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                suffixIcon: Icon(Icons.search_outlined),
                suffixIconColor: Colors.grey,
                hintStyle: TextStyle(
                    fontSize: 12,
                    color: AppColors.app1BrandLightBorderColor,
                    fontFamily: 'RobotoMono',
                    fontWeight: FontWeight.bold),
                hintText: 'Sports shoes'),
          )),
          const SizedBox(
            width: 10,
          ),
          Container(
            decoration: const BoxDecoration(
                color: AppColors.app2BrandObjectsColor,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> sortedBy = ['Sort by', 'Name', 'Price'];
    String selectItem = 'Sort by';

    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Sport Shoes',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              )),
          Container(
            alignment: Alignment.centerRight,
            height: 30,
            width: 75,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: DropdownButton<String>(
              iconSize: 12,
              underline: const SizedBox(),
              hint: const Text('Sort By'),
              dropdownColor: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              value: selectItem,
              items: sortedBy.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item,
                      style: Theme.of(context).textTheme.displaySmall),
                );
              }).toList(),
              onChanged: (String? value) {
                selectItem = value!;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductList extends StatelessWidget {
  const _ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final productsList = listProduct;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 15,
        crossAxisSpacing: 12,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final products = productsList[index];

        return ProductCard(products: products);
      },
      itemCount: productsList.length,
    );
  }
}
