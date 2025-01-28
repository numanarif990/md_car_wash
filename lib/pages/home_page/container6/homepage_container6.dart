import 'package:flutter/material.dart';
import 'package:md_car_wash/pages/home_page/container6/homepage_container6_desktop.dart';
import 'package:md_car_wash/pages/home_page/container6/homepage_container6_mobile.dart';
import 'package:md_car_wash/pages/home_page/container6/homepage_container6_tablet.dart';
import 'package:md_car_wash/responsiveLayout.dart';

class HomepageContainer6 extends StatelessWidget {
  const HomepageContainer6({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: HomepageContainer6Mobile(),
        tabletView: HomepageContainer6Tablet(),
        desktopView: HomepageContainer6Desktop(),
        largeScreenView: HomepageContainer6Desktop());
  }
}
