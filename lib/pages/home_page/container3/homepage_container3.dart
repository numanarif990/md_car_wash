import 'package:flutter/material.dart';
import 'package:md_car_wash/pages/home_page/container3/homepage_container3_desktop.dart';
import 'package:md_car_wash/pages/home_page/container3/homepage_container3_mobile.dart';
import 'package:md_car_wash/pages/home_page/container3/homepage_container3_tablet.dart';
import 'package:md_car_wash/responsiveLayout.dart';
class HomepageContainer3 extends StatelessWidget {
  const HomepageContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: HomepageContainer3Mobile(),
      tabletView: HomepageContainer3Tablet(),
      desktopView: HomepageContainer3Desktop(),
      largeScreenView: HomepageContainer3Desktop(),
    );
  }
}
