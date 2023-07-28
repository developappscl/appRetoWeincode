import 'package:flutter/material.dart';

import '../../../datasource/data/rooms_data.dart';
import 'room_card.dart';

class RoomListScreen extends StatelessWidget {
  const RoomListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rooms',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const _RoomList(),
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
