import 'package:flutter/material.dart';
import 'package:md_car_wash/pages/home_page/container5/homepage_container5_desktop.dart';
import 'package:md_car_wash/pages/home_page/container5/homepage_container5_mobile.dart';
import 'package:md_car_wash/pages/home_page/container5/homepage_container5_tablet.dart';
import 'package:md_car_wash/responsiveLayout.dart';

class HomepageContainer5 extends StatelessWidget {
  const HomepageContainer5({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: HomepageContainer5Mobile(),
        tabletView: HomepageContainer5Tablet(),
        desktopView: HomepageContainer5Desktop(),
        largeScreenView: HomepageContainer5Desktop());
  }
}
