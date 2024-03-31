// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:insta/core/constants/color_constants.dart';
import 'package:insta/view/bottom_nav/create_post_screen/tabs/library_tab.dart';
import 'package:insta/view/bottom_nav/create_post_screen/tabs/photo_tab.dart';
import 'package:insta/view/bottom_nav/create_post_screen/tabs/video_tab.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Text(
                  "Cancel",
                  style: TextStyle(fontSize: 15),
                ),
              )),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [Text("Recents"), Icon(Icons.keyboard_arrow_down)],
          ),
          centerTitle: true,
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(color: ColorConstants.primaryBlue),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 375,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      fit: BoxFit.cover)),
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor:
                          ColorConstants.primaryBlack.withOpacity(0.4),
                      child: Icon(
                        Icons.all_inclusive,
                        color: ColorConstants.lightGrey,
                      ),
                    ),
                    SizedBox(width: 4),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor:
                          ColorConstants.primaryBlack.withOpacity(0.4),
                      child: Icon(
                        Icons.space_dashboard_outlined,
                        color: ColorConstants.lightGrey,
                      ),
                    ),
                    SizedBox(width: 4),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryBlack.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.filter_none,
                              color: ColorConstants.lightGrey,
                            ),
                            SizedBox(width: 15),
                            Text(
                              "SELECT MULTIPLE",
                              style: TextStyle(color: ColorConstants.lightGrey),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                LibraryTab(),
                PhotoTab(),
                VideoTab(),
              ]),
            )
          ],
        ),
        bottomNavigationBar: TabBar(
            indicator: BoxDecoration(),
            unselectedLabelColor: ColorConstants.primaryBlack.withOpacity(0.4),
            labelColor: ColorConstants.primaryBlack,
            tabs: [
              Tab(
                text: "Library",
              ),
              Tab(
                text: "Photo",
              ),
              Tab(
                text: "Video",
              )
            ]),
      ),
    );
  }
}
