import 'package:flutter/material.dart';
import 'package:md_car_wash/utils/customElevatedButton.dart';
import 'navLogo.dart';
import 'nav_button.dart';


class DesktopNavBar extends StatelessWidget {
  // final Function(int) onNavItemTap;

  const DesktopNavBar({
    super.key,
    // required this.onNavItemTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center( // Center the container horizontally
      child: Container(
        height: size.width * 0.05,
        width: size.width < 1920 ? size.width : 1920, // Limit the width to 1300
        decoration: const BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black, // Shadow color
              offset: Offset(0, 6), // Position the shadow below the container (no horizontal movement)
              blurRadius: 30, // Soft shadow, adjust as needed
              spreadRadius: 30, // No horizontal spread, shadow will only appear below
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(
                fontSize: size.width * 0.02,
              ),
              Row(
                children: [
                  NavButton(
                    text: 'BASIC WASH',
                    fontSize: size.width * 0.01,
                    onTap: () {},
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.white,
                  ),
                  NavButton(
                    text: 'SUPER WASH',
                    fontSize: size.width * 0.01,
                    onTap: () {},
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.white,
                  ),
                  NavButton(
                    text: 'DELUXE WASH',
                    fontSize: size.width * 0.01,
                    onTap: () {},
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.white,
                  ),
                  NavButton(
                    text: 'PREMIUM WASH',
                    fontSize: size.width * 0.01,
                    onTap: () {},
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.white,
                  ),
                  NavButton(
                    text: 'ULTIMATE WASH',
                    fontSize: size.width * 0.01,
                    onTap: () {},
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.white,
                  ),
                  NavButton(
                    text: 'ABOUT US',
                    fontSize: size.width * 0.01,
                    onTap: () {},
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Customelevatedbutton(iconSize: size.width * 0.025, fontSize: size.width * 0.011, width: size.width *0.13,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}

