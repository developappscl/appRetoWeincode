import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:retoweincode01/config/config.dart';
import 'package:retoweincode01/widgets/app3/widgets/favorite_options.dart';
import 'package:retoweincode01/widgets/app3/widgets/room_card.dart';
import '../datasource/data/rooms_data.dart';

import '../widgets/app3/widgets/widgets.dart';

class App3Screen extends StatelessWidget {
  const App3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeApp3(isDarkMode: false).defaultTheme(),
      home: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            35,
            0,
            20,
          ),
          child: HomeApp3Bar(),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: const Column(
          children: [
            _SweetHome(),
            _FavoriteScenes(),
            Expanded(
              child: _Rooms(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                spreadRadius: 0,
                blurRadius: 0,
              )
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          child: BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: false,
              elevation: 6,
              selectedIconTheme: const IconThemeData(size: 20),
              currentIndex: 3,
              items: const [
                BottomNavigationBarItem(
                  label: '.',
                  icon: Icon(
                    Icons.toggle_off_outlined,
                    color: Colors.grey,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '.',
                  icon: Icon(
                    Icons.mic_sharp,
                    color: Colors.grey,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '.',
                  icon: Icon(
                    Icons.add_circle,
                    color: Colors.purple,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '.',
                  icon: Icon(
                    Icons.videocam_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '.',
                  icon: Icon(
                    Icons.insert_chart_outlined,
                    color: Colors.grey,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

class _SweetHome extends StatelessWidget {
  const _SweetHome();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      height: 200,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 0, bottom: 10),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Sweet Home',
            style: Theme.of(context).textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const _CircleOptions()
        ],
      ),
    );
  }
}

class _CircleOptions extends StatelessWidget {
  const _CircleOptions();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OptionSweet(
              image: 'assets/images/fron.png',
              title: 'Fron Door',
              subtitle: 'Open'),
          OptionSweet(
              image: 'assets/images/2light.png',
              title: '2 Lights',
              subtitle: 'On'),
          OptionSweet(
              image: 'assets/images/camera.png',
              title: 'Cameras',
              subtitle: 'Off'),
          OptionSweet(
            image: 'assets/images/wiffi.png',
            title: 'WiFi',
            subtitle: 'On',
          )
        ],
      ),
    );
  }
}

class _FavoriteScenes extends StatelessWidget {
  const _FavoriteScenes();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15, left: 20),
            child: Text(
              'Favorite Scenes',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _GridScenes()
        ],
      ),
    );
  }
}

class _GridScenes extends StatelessWidget {
  const _GridScenes();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          )),
      child: const Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            FavoriteOptions(
              image: 'assets/images/goodmorning.png',
              status: 'Good\nMorning',
              isActive: true,
            ),
            FavoriteOptions(
              image: 'assets/images/arrivehome.png',
              status: 'Arrive\nHome',
              isActive: false,
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FavoriteOptions(
                image: 'assets/images/leavehome.png',
                status: 'Leave\nHome',
                isActive: false,
              ),
              FavoriteOptions(
                image: 'assets/images/goodnight.png',
                status: 'Good\nNight',
                isActive: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _Rooms extends StatelessWidget {
  const _Rooms();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Rooms',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.push('/rooms');
                  },
                  child: const Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: _RoomList())
        ],
      ),
    );
  }
}

class _RoomList extends StatelessWidget {
  const _RoomList();

  @override
  Widget build(BuildContext context) {
    final listRoom = listRooms;
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: GridView.builder(
        itemCount: listRoom.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 12, crossAxisSpacing: 12, crossAxisCount: 2),
        itemBuilder: (context, index) {
          final listofRooms = listRoom[index];
          return RoomCard(rooms: listofRooms);
        },
      ),
    );
  }
}
