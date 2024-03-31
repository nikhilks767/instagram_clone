// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    final List images = [
      "https://images.pexels.com/photos/19741791/pexels-photo-19741791/free-photo-of-portrait-of-a-green-tree-python.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "https://images.pexels.com/photos/18696919/pexels-photo-18696919/free-photo-of-river-and-waterfall-in-iceland.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      "https://images.pexels.com/photos/4048093/pexels-photo-4048093.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1276518/pexels-photo-1276518.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/1234035/pexels-photo-1234035.jpeg?auto=compress&cs=tinysrgb&w=600",
    ];
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 1, mainAxisSpacing: 1),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
                image: NetworkImage(images[index]), fit: BoxFit.cover)),
        width: 50,
        height: 50,
      ),
    );
  }
}
