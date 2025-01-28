import 'package:flutter/material.dart';

class NavLogo extends StatelessWidget {
  final double fontSize;
  final Color fontColor;

  const NavLogo({
    super.key,
   this.fontColor = Colors.white,
    required this.fontSize,

  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: size.width < 1920 ? fontSize : 23,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: "montserrat",
        ),
        children: [
          TextSpan(
            text: 'MDMOBILE',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          TextSpan(
            text: ' CARWASH',
            style: TextStyle(
              color: fontColor,
              fontFamily: 'actor',
              fontWeight: FontWeight.normal,
          ),
          )
        ],
      ),
    );
  }
}
