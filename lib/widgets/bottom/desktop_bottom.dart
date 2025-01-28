import 'package:flutter/material.dart';
import 'package:md_car_wash/utils/colors.dart';
import 'package:md_car_wash/utils/customElevatedButton.dart';
import 'package:md_car_wash/utils/custom_textbutton.dart';
import 'package:md_car_wash/widgets/navbar/navLogo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopBottom extends StatelessWidget {
  const DesktopBottom({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(20),
      constraints: BoxConstraints(
          maxWidth: size.width < 1920 ? size.width : 1920, maxHeight: 400),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Mdmobilecarwash's tips are 100% Free",
            style: TextStyle(fontFamily: 'poppins', fontSize: 23),
          ),
          SizedBox(height: 10),
          Text(
              "See why people around the world are choosing us. Enter your email to get our tips for free.",
              style: TextStyle(fontSize: 15)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: AppColors.primaryColor)),
                  ),
                  cursorColor: Colors.grey,
                ),
              ),
              SizedBox(width: 10),
              Customelevatedbutton(
                icon: Icons.mail,
                text: "Get Started!",
                backgroundColor: Colors.black,
                iconColor: Colors.white,
                textColor: Colors.white,
              )
            ],
          ),
          SizedBox(height: 90),
          SizedBox(
            width: 1100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NavLogo(
                      fontSize: 18,
                      fontColor: Colors.black,
                    ),
                    Text(
                      "© 2024 Mdmobilecarwash",
                      style: TextStyle(fontSize: 15, height: 0.8),
                    ),
                    Text(
                      "Safest place for your car",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  width: 450,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Info",
                              style: TextStyle(
                                  fontFamily: 'montserrat',
                                  fontSize: 16,
                                  height: 0.7,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10),
                                   CustomTextButton(onPressed: (){}, text: "Privacy"),
                                    SizedBox(height: 3),
                                    CustomTextButton(onPressed: (){}, text: "Terms"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Resources",
                              style: TextStyle(
                                  fontFamily: 'montserrat',
                                  fontSize: 16,
                                  height: 0.7,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10),
                          CustomTextButton(onPressed: (){}, text: "Basic wash"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Super wash"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Deluxe wash"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Premium wash"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "Ultimate wash"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Say Hi!",
                              style: TextStyle(
                                  fontFamily: 'montserrat',
                                  fontSize: 16,
                                  height: 0.7,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10),
                          CustomTextButton(onPressed: (){}, text: "Contact Us"),
                          SizedBox(height: 3),
                          CustomTextButton(onPressed: (){}, text: "About Us"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.linkedin)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.x)),
                      IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.instagram)),
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
