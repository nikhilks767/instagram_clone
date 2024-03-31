// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:insta/view/bottom_nav/screens/search_screen/widget/search_category_card.dart';
import 'package:insta/view/bottom_nav/screens/search_screen/widget/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  isDense: true,
                  contentPadding: EdgeInsets.all(10),
                  prefixIconConstraints: BoxConstraints(minWidth: 30),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            )),
            SizedBox(width: 10),
            Icon(Icons.qr_code_scanner)
          ],
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    10,
                    (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SearchCategory())),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              4, (index) => SearchResult(isIndexEven: index.isEven)),
        ),
      ),
    );
  }
}
