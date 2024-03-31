// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:insta/view/bottom_nav/bottom_nav.dart';

import 'package:insta/view/bottom_nav/screens/home_screen/home_screen.dart';
import 'package:insta/view/bottom_nav/screens/search_screen/search_screen.dart';
import 'package:insta/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
