import 'package:flutter/material.dart';
import 'package:md_car_wash/utils/colors.dart';

class Customelevatedbutton extends StatelessWidget {
  final double width;
  final double height;
  final double iconSize;
  final double fontSize;
  final IconData icon;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Color iconColor;

  const Customelevatedbutton(
      {super.key,
      this.width = 160,
      this.height = 50,
      this.iconSize = 20,
      this.fontSize = 12,
      this.icon = Icons.contact_mail,
      this.text = "Contact Us",
      this.backgroundColor = Colors.white,
        this.iconColor = Colors.black,
        this.textColor = Colors.black
      });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width <= 1920 ? width : 200,
        height: size.width <= 1920 ? height : 70,

        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
          border: Border(
            left: BorderSide(
              color: AppColors.primaryColor, // Border color
              width: size.width * 0.004, // Border width
            ),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: size.width <= 1920 ? iconSize : 25,
              ),
              SizedBox(
                width: size.width * 0.001,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'poppins',
                      fontSize: size.width <= 1920 ? fontSize : 20,
                    ),
                  )),
            ],
          ),
        ));
  }
}
