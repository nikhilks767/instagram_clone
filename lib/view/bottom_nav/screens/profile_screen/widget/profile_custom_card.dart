// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileCustomCard extends StatelessWidget {
  const ProfileCustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              "54",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Posts"),
          ],
        ),
        Column(
          children: [
            Text(
              "834",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Followers"),
          ],
        ),
        Column(
          children: [
            Text(
              "162",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Following"),
          ],
        )
      ],
    );
  }
}
