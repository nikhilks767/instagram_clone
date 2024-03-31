// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:insta/core/constants/color_constants.dart';
import 'package:insta/global_widgets/custom_button.dart';
import 'package:insta/view/login_screen/login_screen.dart';

class SelectAccScreen extends StatelessWidget {
  const SelectAccScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/insta_text.png"),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/hoodie2.jpg"),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "nikhil_ks",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              CustomButton(
                text: "Log in",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text("Switch Accounts"),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
        child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Don't have an account?",
                style: TextStyle(
                    color: ColorConstants.primaryBlack.withOpacity(0.4)),
                children: [
                  TextSpan(
                      text: "Sign up.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: ColorConstants.primaryBlack.withOpacity(0.8)))
                ])),
      ),
    );
  }
}
