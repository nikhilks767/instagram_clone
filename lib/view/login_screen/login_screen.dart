// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta/core/constants/color_constants.dart';
import 'package:insta/global_widgets/custom_button.dart';
import 'package:insta/view/bottom_nav/bottom_nav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController ctrname = TextEditingController();
  TextEditingController ctrpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/insta_text.png"),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: ctrname,
                  decoration: InputDecoration(
                      fillColor: ColorConstants.lightGrey,
                      filled: true,
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: "Username",
                      hintStyle: TextStyle(
                          color: ColorConstants.primaryBlack.withOpacity(0.4)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorConstants.primaryBlack
                                  .withOpacity(0.4)))),
                  cursorColor: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: ctrpass,
                  obscureText: true,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    fillColor: ColorConstants.lightGrey,
                    filled: true,
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: ColorConstants.primaryBlack.withOpacity(0.4)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                ColorConstants.primaryBlack.withOpacity(0.4))),
                  ),
                  cursorColor: Colors.black,
                  onChanged: (value) => setState(() {}),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                        )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "Log in",
                  buttoncolor:
                      ctrname.text.isNotEmpty && ctrpass.text.isNotEmpty
                          ? ColorConstants.primaryBlue
                          : ColorConstants.primaryBlue.withOpacity(0.4),
                  onTap: () {
                    ctrname.text.isNotEmpty && ctrpass.text.isNotEmpty
                        ? Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNav(),
                            ),
                            (route) => false)
                        : null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: ColorConstants.primaryBlue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Log in with Facebook",
                        style: TextStyle(color: ColorConstants.primaryBlue)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: ColorConstants.primaryBlack.withOpacity(0.6),
                      endIndent: 30,
                    )),
                    Text("OR"),
                    Expanded(
                        child: Divider(
                      color: ColorConstants.primaryBlack.withOpacity(0.6),
                      indent: 30,
                    )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                RichText(
                    text: TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                            color:
                                ColorConstants.primaryBlack.withOpacity(0.4)),
                        children: [
                      TextSpan(
                          text: "Sign up.",
                          style: TextStyle(
                            color: ColorConstants.primaryBlue,
                          )),
                    ])),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(border: Border(top: BorderSide(width: 0.1))),
        child: Text(
          "INSTAGRAM OR FACEBOOK",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 10,
              color: ColorConstants.primaryBlack.withOpacity(0.4)),
        ),
      ),
    );
  }
}
