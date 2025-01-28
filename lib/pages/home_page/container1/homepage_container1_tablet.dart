import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../controllers/image_slider_controller.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../utils/constants.dart';
import '../../../utils/customElevatedButton.dart';
import 'animatedText.dart';
class HomepageContainer1Tablet extends StatelessWidget {
  const HomepageContainer1Tablet({super.key});

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final BackgroundSliderController controller =
    Get.put(BackgroundSliderController());
    return Obx(() {
      return Stack(
        children: [
          // Carousel Slider for Background Images
          CarouselSlider.builder(
            itemCount: controller.images.length,
            itemBuilder: (context, index, realIndex) {
              return Image.asset(
                controller.images[index],
                fit: BoxFit.cover,
                width: size.width<= 1920? size.width: Constants.desktopwidth,
              );
            },
            options: CarouselOptions(
              height: size.width <= 1920 ? size.height : Constants.desktoopheight,
              // Fill entire container
              viewportFraction: 1.0,
              // Only show one image at a time
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              onPageChanged: (index, reason) {
                controller.updateIndex(index);
              },
            ),
          ),
          Center(
            child: Container(
              width:  size.width<= 1920? size.width: Constants.desktopwidth,
              height: size.width <= 1920 ? size.height : Constants.desktoopheight,
              color: Colors.black.withOpacity(0.9),
            ),
          ),

          // Text in the middle
          Center(
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.34),
                  HomepageAnimatedText(fontSize: size.width *0.070,boxSize: size.width*0.1,secondFontsize: size.width*0.04,),
                  const SizedBox(height: 30),
                  Customelevatedbutton(
                    width:  size.width * 0.47,
                    height: size.width * 0.12,
                    iconSize: size.width * 0.07,
                    fontSize: size.width * 0.038,
                  )
                ],
              )),
          // Indicator at the bottom
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.images.length,
                    (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: controller.currentIndex.value == index ? 12.0 : 8.0,
                  height: controller.currentIndex.value == index ? 12.0 : 8.0,
                  decoration: BoxDecoration(
                    color: controller.currentIndex.value == index
                        ? AppColors.primaryColor
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
