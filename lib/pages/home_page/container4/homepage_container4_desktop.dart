import 'package:flutter/material.dart';
import 'package:md_car_wash/pages/home_page/container4/feature_box.dart';

class HomepageContainer4Desktop extends StatelessWidget {
  const HomepageContainer4Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        maxWidth:  1000,
        maxHeight: 400,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Car Detailing In Portugal | MdMobileCarWash",
            style: TextStyle(
                fontFamily: 'montserrat',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  FeatureBox(),
                  SizedBox(height: 50,),
                  FeatureBox(title: "Attention to Detail",)
                ],
              ),
              Column(
                children: [
                  FeatureBox(title: "Customer Convenience",),
                  SizedBox(height: 50,),
                  FeatureBox(title: "Time Efficiency",)
                ],
              ),
              Column(
                children: [
                  FeatureBox(title: "Transparent Pricing",),
                  SizedBox(height: 50,),
                  FeatureBox(title: "Personalized Service",)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

