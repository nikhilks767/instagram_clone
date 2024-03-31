// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:insta/core/constants/color_constants.dart';
import 'package:insta/dummy_db.dart';
import 'package:insta/global_widgets/custom_button.dart';
import 'package:insta/view/bottom_nav/screens/profile_screen/widget/profile_circle.dart';

import 'package:insta/view/bottom_nav/screens/profile_screen/widget/profile_custom_card.dart';
import 'package:insta/view/bottom_nav/screens/profile_screen/widget/tab1.dart';
import 'package:insta/view/bottom_nav/screens/profile_screen/widget/tab2.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.lock),
              SizedBox(width: 5),
              Text(
                "Rick_grimes",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 5),
              Icon(Icons.keyboard_arrow_down)
            ],
          ),
          centerTitle: true,
          actions: [Icon(Icons.menu), SizedBox(width: 15)],
        ),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ProfileCircle(
                          radius: 40,
                          backgroundImage:
                              "https://images.pexels.com/photos/4029925/pexels-photo-4029925.jpeg?auto=compress&cs=tinysrgb&w=600",
                        ),
                        Expanded(child: ProfileCustomCard())
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Rick_grimes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                        "It is a long established fact that a reader will distract"),
                    Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        "as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing"),
                    SizedBox(height: 10),
                    CustomButton(
                      text: "Edit Profile",
                      buttoncolor: ColorConstants.primaryWhite,
                      haveborder: true,
                      textcolor: ColorConstants.primaryBlack,
                      verticalpadding: 5,
                    ),
                    SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: ColorConstants.primaryBlack
                                            .withOpacity(0.5),
                                        width: 1)),
                                child: Center(child: Icon(Icons.add)),
                              ),
                              SizedBox(height: 3),
                              Text("Add")
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: List.generate(
                                  7,
                                  (index) => Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6),
                                            child: ProfileCircle(
                                                radius: 30,
                                                backgroundImage: DummyDb
                                                    .highlights[index]["pic"]),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            DummyDb.highlights[index]["text"],
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 5),
            TabBar(
                indicatorWeight: 1,
                labelPadding: EdgeInsets.only(bottom: 8),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: ColorConstants.primaryBlack,
                labelColor: ColorConstants.primaryBlack,
                unselectedLabelColor:
                    ColorConstants.primaryBlack.withOpacity(0.4),
                tabs: [
                  Icon(Icons.grid_on_sharp),
                  Icon(Icons.person_pin_rounded),
                ]),
            Expanded(
              child: TabBarView(children: [
                Tab1(),
                Tab2(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
