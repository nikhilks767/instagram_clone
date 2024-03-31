// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:insta/core/constants/color_constants.dart';

class SearchCategory extends StatelessWidget {
  const SearchCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 35,
      decoration: BoxDecoration(
          border:
              Border.all(color: ColorConstants.primaryBlack.withOpacity(0.7)),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.home),
            SizedBox(width: 5),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
