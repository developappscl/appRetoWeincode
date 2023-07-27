import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';

import '../widgets/app1/widgets.dart';

class App1Screen extends StatefulWidget {
  const App1Screen({super.key});

  @override
  State<App1Screen> createState() => _App1ScreenState();
}

class _App1ScreenState extends State<App1Screen> {
  int selectedIndex = 0;

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
              _CategoryView(),
              const SizedBox(
                height: 20,
              ),
              _CardsView(),
              const SizedBox(
                height: 20,
              ),
              const CardStudyWide(
                height: 120,
                width: 330,
                imageAsset: 'assets/images/image3.png',
                title: 'Management',
                subTitle: '12 Courses',
                backGroundcolor: AppColors.app1Image3,
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38, spreadRadius: 0.1, blurRadius: 1),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: false,
                elevation: 6,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    label: '.',
                    icon: Icon(Icons.home_filled),
                  ),
                  BottomNavigationBarItem(
                    label: '.',
                    icon: Icon(Icons.explore_outlined),
                  ),
                  BottomNavigationBarItem(
                    label: '.',
                    icon: Icon(Icons.favorite_outline_outlined),
                  ),
                  BottomNavigationBarItem(
                    label: '.',
                    icon: Icon(Icons.person_outlined),
                  ),
                ]),
          ),
        ));
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
                      color: AppColors.app1BrandLightBorderColor,
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
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 170,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardStudy(
            height: 350,
            width: 150,
            imageAsset: 'assets/images/image1.png',
            title: 'UI/UX Design',
            subTitle: '10 Courses',
            backGroundcolor: AppColors.app1Image1,
          ),
          CardStudy(
            height: 350,
            width: 150,
            imageAsset: 'assets/images/image2.png',
            title: 'Marketing',
            subTitle: '15 Courses',
            backGroundcolor: AppColors.app1Image2,
          ),
        ],
      ),
    );
  }
}
