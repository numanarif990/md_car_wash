import 'package:flutter/material.dart';
import 'package:md_car_wash/pages/home_page/container4/homepage_container4_desktop.dart';
import 'package:md_car_wash/pages/home_page/container4/homepage_container4_mobile.dart';
import 'package:md_car_wash/pages/home_page/container4/homepage_container4_tablet.dart';
import 'package:md_car_wash/responsiveLayout.dart';

class HomepageContainer4 extends StatelessWidget {
  const HomepageContainer4({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: HomepageContainer4Mobile(),
        tabletView: HomepageContainer4Tablet(),
        desktopView: HomepageContainer4Desktop(),
        largeScreenView: HomepageContainer4Desktop());
  }
}
