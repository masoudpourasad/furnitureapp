import 'package:flutter/material.dart';

import '../screens/details.dart';

class RoomItem extends StatelessWidget {
  final Map furniture;

  const RoomItem({super.key, required this.furniture});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const Details();
              },
            ),
          );
        },
        child: SizedBox(
          height: 275,
          width: 280,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  furniture['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "${furniture["img"]}",
                    height: 240,
                    width: 280,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
