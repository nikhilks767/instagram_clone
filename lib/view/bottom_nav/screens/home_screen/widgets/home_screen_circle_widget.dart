// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:insta/core/constants/color_constants.dart';

class HomeScreenCircle extends StatelessWidget {
  const HomeScreenCircle(
      {super.key,
      required this.userName,
      required this.profPic,
      this.isLive = false});

  final String userName;
  final String profPic;
  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color(0xffFBAA47),
            Color(0xffA60F93),
            Color(0xffD91A46),
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 67,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConstants.primaryWhite,
                    radius: 31,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(profPic),
                      radius: 28,
                      backgroundColor:
                          ColorConstants.primaryBlack.withOpacity(0.3),
                    ),
                  ),
                  isLive
                      ? Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffE10038),
                                border: Border.all(
                                    color: ColorConstants.primaryWhite,
                                    width: 3),
                                borderRadius: BorderRadius.circular(4)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 1),
                              child: Text(
                                "LIVE",
                                style: TextStyle(
                                    color: ColorConstants.primaryWhite,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ))
                      : SizedBox(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                userName,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.primaryBlack),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
