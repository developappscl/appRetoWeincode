import 'package:flutter/material.dart';
import 'package:retoweincode01/datasource/model/rooms_model.dart';

class RoomCard extends StatelessWidget {
  final Rooms rooms;

  const RoomCard({
    super.key,
    required this.rooms,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: rooms.color,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          )),
      height: 140,
      width: 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(rooms.image),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(rooms.typeRoom,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: rooms.typeColorText == true
                      ? Colors.white
                      : Colors.black)),
          Text(
            '${rooms.countDevices.toString()} devices',
            style: TextStyle(
                fontSize: 11,
                color:
                    rooms.typeColorText == true ? Colors.white : Colors.black),
          )
        ],
      ),
    );
  }
}
