import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:md_car_wash/utils/colors.dart';

class HomepageAnimatedText extends StatelessWidget {
  const HomepageAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Column(
          children: [
            Text(
              "WELCOME TO ",
              style: TextStyle(
                color: Colors.white,
                  fontFamily: 'poppins',
                  height: 0.7,
                  fontSize: size.width * 0.045 , fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.width * 0.05,
              child: DefaultTextStyle(
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: size.width * 0.045,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'poppins'
                ),
                child: AnimatedTextKit(
                  totalRepeatCount: 100,
                  animatedTexts: [
                    FadeAnimatedText('MD !'),
                    FadeAnimatedText('MD MOBILE !!'),
                    FadeAnimatedText('MD MOBILE CAR WASH !!!'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
            SizedBox(height: 20,),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: size.width*0.02,
                color: Colors.white,
                fontFamily: 'montserrat',
              ),
              child: AnimatedTextKit(
                totalRepeatCount: 100,
                animatedTexts: [
                  TypewriterAnimatedText('Your Premier Car Care Spot in Portugal!'),
                  TypewriterAnimatedText("Portugal's Top Choice for Car Care!"),
                  TypewriterAnimatedText('Ultimate Car Care, Right Here in Portugal!'),
                  TypewriterAnimatedText('Discover Superior Car Care in Portugal!'),
                  TypewriterAnimatedText('The Best Car Care Hub in Portugal!'),

                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
