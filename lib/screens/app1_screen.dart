import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';
import 'package:retoweincode01/widgets/card_study.dart';

import '../widgets/widgets.dart';

class App1Screen extends StatelessWidget {
  const App1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeApp1(isDarkMode: false).defaultTheme(),
      home: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(16, 35, 16, 12),
          child: HomeAppBar(),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 29, top: 20, right: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your Favorite',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Text(
              'course Here!',
              style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(95, 50, 245, 1)),
            ),
            const SizedBox(
              height: 10,
            ),
            _SearchView(),
            const SizedBox(
              height: 10,
            ),
            const _CategoryView(),
            const SizedBox(
              height: 20,
            ),
            _CardsView(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(right: 20),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Form(
                child: TextFormField(
              decoration: const InputDecoration(
                  labelStyle:
                      TextStyle(color: AppColors.app1BrandLightBorderColor),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.app1BrandLightBorderColor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      )),
                  prefixIcon: Icon(
                    Icons.search_sharp,
                    color: AppColors.app1BrandLightBorderColor,
                    size: 35,
                  ),
                  hintStyle: TextStyle(
                      color: AppColors.app2BrandLightBorderColor,
                      fontFamily: 'RobotoMono',
                      fontWeight: FontWeight.w400),
                  hintText: 'Search here...'),
            )),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            decoration: const BoxDecoration(
                color: AppColors.app1BrandButtonColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                )),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.tune_outlined,
                  size: 45, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class _CategoryView extends StatelessWidget {
  const _CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.only(right: 20),
      child: const Row(
        children: [
          Expanded(
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Text(
            'View All',
            style: TextStyle(color: AppColors.app1BrandLightBorderColor),
          )
        ],
      ),
    );
  }
}

class _CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardStudy(
              height: 350,
              width: 150,
              imageAsset: 'assets/images/image1.png',
              title: 'UI/UX Design',
              subTitle: '10 Courses',
              backGroundcolor: AppColors.app1BrandButtonColor),
          CardStudy(
            height: 350,
            width: 150,
            imageAsset: 'assets/images/image1.png',
            title: 'Marketing',
            subTitle: '15 Courses',
            backGroundcolor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
