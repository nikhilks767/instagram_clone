// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:insta/core/constants/color_constants.dart';
import 'package:insta/dummy_db.dart';
import 'package:insta/view/bottom_nav/screens/home_screen/widgets/home_screen_circle_widget.dart';
import 'package:insta/view/bottom_nav/screens/home_screen/widgets/home_screen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.lightGrey,
          leading: Icon(
            Icons.camera_alt_outlined,
            size: 28,
            color: ColorConstants.primaryBlack,
          ),
          title: Image.asset("assets/insta_text.png", scale: 1.5),
          centerTitle: true,
          actions: [
            Stack(children: [
              Icon(
                Icons.live_tv_rounded,
                size: 28,
                color: ColorConstants.primaryBlack,
              ),
              Positioned(
                  right: 0,
                  top: 4,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: ColorConstants.darkRed,
                  ))
            ]),
            SizedBox(
              width: 17,
            ),
            Icon(
              Icons.send,
              size: 28,
              color: ColorConstants.primaryBlack,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Row(
                      children: List.generate(
                          DummyDb.storyList.length,
                          (index) => Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: HomeScreenCircle(
                                  profPic: DummyDb.storyList[index]["profPic"],
                                  userName: DummyDb.storyList[index]
                                      ["userName"],
                                  isLive: DummyDb.storyList[index]["isLive"],
                                ),
                              )),
                    ),
                  )),
              Column(
                children: List.generate(
                    DummyDb.postList.length,
                    (index) => HomeScreenWidget(
                          userName:
                              DummyDb.postList[index]["userName"].toString(),
                          location:
                              DummyDb.postList[index]["location"].toString(),
                          profpic:
                              DummyDb.postList[index]["profpic"].toString(),
                          posts: DummyDb.postList[index]["posts"],
                          caption:
                              DummyDb.postList[index]["caption"].toString(),
                          isLiked: DummyDb.postList[index]["isLiked"],
                          isVerified: DummyDb.postList[index]["isVerified"],
                        )),
              )
            ],
          ),
        ));
  }
}
