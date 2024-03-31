// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:insta/core/constants/color_constants.dart';
import 'package:insta/view/bottom_nav/create_post_screen/create_post_screen.dart';

import 'package:insta/view/bottom_nav/screens/favorite_screen/favorite_screen.dart';
import 'package:insta/view/bottom_nav/screens/home_screen/home_screen.dart';
import 'package:insta/view/bottom_nav/screens/profile_screen/profile_screen.dart';
import 'package:insta/view/bottom_nav/screens/search_screen/search_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
  });

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List screens = [
    HomeScreen(),
    SearchScreen(),
    CreatePostScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  int indexval = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[indexval],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              if (value != 2) {
                indexval = value;
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreatePostScreen(),
                    ));
              }
            });
          },
          currentIndex: indexval,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstants.primaryBlack,
          unselectedItemColor: ColorConstants.primaryBlack.withOpacity(0.4),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_filled),
                label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                activeIcon: Icon(Icons.favorite_outlined),
                label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                    radius: 13,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/4029925/pexels-photo-4029925.jpeg?auto=compress&cs=tinysrgb&w=600")),
                activeIcon: CircleAvatar(
                  radius: 13,
                  backgroundColor: ColorConstants.primaryBlack,
                  child: Center(
                    child: CircleAvatar(
                      radius: 11,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/4029925/pexels-photo-4029925.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    ),
                  ),
                ),
                label: ""),
          ]),
    );
  }
}
