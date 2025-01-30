import 'package:flutter/material.dart';
import 'package:md_car_wash/pages/home_page/container4/feature_box.dart';

class HomepageContainer4Tablet extends StatelessWidget {
  const HomepageContainer4Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1000,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Car Detailing In Portugal | MdMobileCarWash",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'montserrat',
                  fontSize: size.width * 0.045,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  FeatureBox(
                    titleFontsize: size.width * 0.04,
                    descriptionFontsize: size.width * 0.025,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FeatureBox(
                    title: "Attention to Detail",
                    titleFontsize: size.width * 0.04,
                    descriptionFontsize: size.width * 0.025,
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Column(
                children: [
                  FeatureBox(
                    title: "Customer Convenience",
                    titleFontsize: size.width * 0.04,
                    descriptionFontsize: size.width * 0.025,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FeatureBox(
                    title: "Time Efficiency",
                    titleFontsize: size.width * 0.04,
                    descriptionFontsize: size.width * 0.025,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  FeatureBox(
                    title: "Transparent Pricing",
                    titleFontsize: size.width * 0.04,
                    descriptionFontsize: size.width * 0.025,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FeatureBox(
                    title: "Personalized Service",
                    titleFontsize: size.width * 0.04,
                    descriptionFontsize: size.width * 0.025,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
