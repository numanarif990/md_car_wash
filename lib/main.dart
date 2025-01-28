import 'package:flutter/material.dart';
import 'package:md_car_wash/controllers/home_page_controller_desktop.dart';
import 'package:md_car_wash/pages/home_page/desktop_homepage.dart';
import 'package:get/get.dart';
import 'package:md_car_wash/pages/home_page/homepage.dart';
import 'package:md_car_wash/utils/colors.dart';
import 'customScrollBehaviour.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double speedFactor = MediaQuery.of(context).size.width < 600 ? 2.0 : 5.0;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MD Mobile Car Wash",
      scrollBehavior: CustomScrollBehavior(speedFactor: speedFactor),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'actor',
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
      ),
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const Homepage(),
      getPages: [
        GetPage(name: '/', page: () => const Homepage()),
      ],
    );
  }
}


