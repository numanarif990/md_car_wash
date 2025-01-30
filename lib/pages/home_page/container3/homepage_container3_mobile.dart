import 'package:flutter/material.dart';
import 'package:md_car_wash/utils/colors.dart';
import 'package:md_car_wash/utils/customElevatedButton.dart';
import 'package:md_car_wash/utils/image_strings.dart';
class HomepageContainer3Mobile extends StatelessWidget {
  const HomepageContainer3Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width*0.04,
          vertical: size.width*0.02,
        ),
        constraints: BoxConstraints(
          maxWidth: size.width <= 1920 ? size.width : 1920,
          maxHeight: 850,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(MdImages.container1_image1, width: size.width * 0.55),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About MdMobileCarWash Hand Car Wash & Detailing",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: size.width * 0.06,
                    fontFamily: 'poppins',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to Washmaster, where we redefine the art of car care with our unparalleled hand car wash services. At Washmaster, we believe in more than just cleaning vehicles; we believe in enhancing and preserving their beauty, one\nmeticulous detail at a time.",
                  style: TextStyle(
                    fontSize: size.width * 0.035,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "At Washmaster, our mission is not just to clean cars; it's to elevate the entire car care experience. We are driven by passion, guided by integrity, and dedicated to making every vehicle shine ",
                  style: TextStyle(fontSize: size.width * 0.035),
                ),
                SizedBox(height: 20),
                Text(
                  "– Because we believe that every ride deserves to be a masterpiece.",
                  style: TextStyle(
                      fontSize: size.width * 0.04,
                      fontFamily: 'poppins',
                      color: AppColors.primaryColor),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: size.width*0.04,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "1234, Washmaster Street,\nNew York, NY 10001",
                          style: TextStyle(fontSize: size.width * 0.030),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(
                          Icons.perm_contact_calendar_rounded,
                          size: size.width*0.04,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "+92347 8117642,\nmuhammadnumanarif04@gmail.com",
                          style: TextStyle(fontSize: size.width * 0.030),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: Customelevatedbutton(
                    width: size.width*0.28,
                    height: size.width*0.09,
                    iconSize: size.width*0.04,
                    fontSize: size.width*0.017,
                    icon: Icons.read_more,
                    text: "Read More",
                    textColor: Colors.white,
                    backgroundColor: Colors.black,
                    iconColor: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
