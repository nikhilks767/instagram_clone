// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:insta/core/constants/color_constants.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget(
      {super.key,
      required this.userName,
      required this.location,
      required this.profpic,
      required this.posts,
      this.caption,
      this.isLiked = false,
      this.isVerified = false});

  final String userName;
  final String location;
  final String profpic;
  final List posts;
  final String? caption;
  final bool isLiked;
  final bool isVerified;

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryWhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.profpic),
              radius: 20,
            ),
            title: Row(
              children: [
                Text(
                  widget.userName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(
                  width: 5,
                ),
                widget.isVerified
                    ? Icon(
                        Icons.verified,
                        size: 15,
                        color: ColorConstants.primaryBlue,
                      )
                    : SizedBox(),
              ],
            ),
            subtitle: Text(
              widget.location,
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 330,
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value + 1;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.posts.length,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                scale: 1.5,
                                image: NetworkImage(widget.posts[index]),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  widget.posts.length > 1
                      ? Positioned(
                          top: 20,
                          right: 20,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 7),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff121212)),
                            child: Text(
                              ("$currentPage/${widget.posts.length}"),
                              style: TextStyle(
                                  color: ColorConstants.primaryWhite,
                                  fontSize: 11),
                            ),
                          ))
                      : SizedBox()
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8)),
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      widget.isLiked
                          ? Icon(Icons.favorite, color: ColorConstants.red)
                          : Icon(Icons.favorite_border_outlined),
                      SizedBox(width: 16),
                      Icon(Icons.maps_ugc_outlined),
                      SizedBox(width: 16),
                      Icon(Icons.send_outlined),
                    ],
                  ),
                  widget.posts.length > 1
                      ? Expanded(
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              widget.posts.length,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: CircleAvatar(
                                      backgroundColor: index == currentPage - 1
                                          ? ColorConstants.primaryBlue
                                          : null,
                                      radius:
                                          index == currentPage - 1 ? 2.5 : 2,
                                    ),
                                  )),
                        ))
                      : Expanded(
                          child: SizedBox(),
                        ),
                  Icon(
                    Icons.bookmark_border,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(widget.profpic),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Liked by ",
                          style: TextStyle(color: ColorConstants.primaryBlack)),
                      TextSpan(
                          text: widget.userName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.primaryBlack)),
                      TextSpan(
                          text: " and",
                          style: TextStyle(color: ColorConstants.primaryBlack)),
                      TextSpan(
                          text: " 56,753 others",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.primaryBlack)),
                    ]))
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "${widget.userName} ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.primaryBlack)),
                      TextSpan(
                          text: widget.caption,
                          style: TextStyle(
                              fontSize: 13,
                              color: ColorConstants.primaryBlack)),
                    ]))
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "September 19",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
