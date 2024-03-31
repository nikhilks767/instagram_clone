// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:insta/core/constants/color_constants.dart';

class ProfileCircle extends StatelessWidget {
  const ProfileCircle(
      {super.key, required this.radius, required this.backgroundImage});
  final double radius;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: ColorConstants.primaryBlack,
      child: CircleAvatar(
        radius: radius - 2,
        backgroundColor: ColorConstants.primaryWhite,
        child: CircleAvatar(
          radius: radius - 3,
          backgroundImage: NetworkImage(backgroundImage),
        ),
      ),
    );
  }
}
