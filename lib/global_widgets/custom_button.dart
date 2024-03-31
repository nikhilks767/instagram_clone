// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:insta/core/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.textcolor = ColorConstants.primaryWhite,
      this.buttoncolor = ColorConstants.primaryBlue,
      this.haveborder = false,
      this.onTap,
      this.verticalpadding = 15});

  final String text;
  final Color textcolor;
  final Color buttoncolor;
  final bool haveborder;
  final double verticalpadding;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: verticalpadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: buttoncolor,
          border: haveborder == true
              ? Border.all(color: ColorConstants.primaryBlack.withOpacity(0.4))
              : null,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textcolor, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
