import 'package:flutter/material.dart';
import 'package:md_car_wash/utils/colors.dart';
import 'package:md_car_wash/utils/customElevatedButton.dart';
import 'package:md_car_wash/utils/image_strings.dart';

class HomepageContainer3Desktop extends StatelessWidget {
  const HomepageContainer3Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 50,
        ),
        constraints: BoxConstraints(
          maxWidth: size.width <= 1920 ? size.width : 1920,
          maxHeight: 620,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(MdImages.container1_image1, width: size.width * 0.45),
            SizedBox(width: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About MdMobileCarWash\nHand Car Wash & Detailing",
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'poppins',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to Washmaster, where we redefine the art of car care with our\nunparalleled hand car wash services. At Washmaster, we believe in more than just\ncleaning vehicles; we believe in enhancing and preserving their beauty, one\nmeticulous detail at a time.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                    "At Washmaster, our mission is not just to clean cars; it's to elevate\nthe entire car care experience. We are driven by passion, guided by integrity,\nand dedicated to making every vehicle shine "),
                SizedBox(height: 20),
                Text(
                  "– Because we believe that every ride deserves\nto be a masterpiece.",
                  style: TextStyle(fontSize: 17,
                  fontFamily: 'poppins',
                    color: AppColors.primaryColor
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 30,),
                        SizedBox(width: 10),
                        Text("1234, Washmaster Street,\nNew York, NY 10001"),
                      ],
                    ),
                    SizedBox(width: 40),
                    Row(
                      children: [
                        Icon(Icons.perm_contact_calendar_rounded, size: 30,),
                        SizedBox(width: 10),
                        Text("+92347 8117642,\nmuhammadnumanarif04@gmail.com"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Customelevatedbutton(
                icon: Icons.read_more,
                  text: "Read More",
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  iconColor: Colors.white,
                ),

              ],
            )
          ],
        ));
  }
}
