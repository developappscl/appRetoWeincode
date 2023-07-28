import 'package:flutter/material.dart';

class HomeApp3Bar extends StatelessWidget {
  const HomeApp3Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Padding(
        padding: EdgeInsets.only(top: 2, bottom: 10),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.cloudy_snowing,
                              color: Colors.purple,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '28 °C',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Today s Weather',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Expanded(child: Text('')),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user3.png'),
            )
          ],
        ),
      ),
    );
  }
}
