import 'package:flutter/material.dart';

import 'package:md_car_wash/pages/home_page/container1/homepage_container1_desktop.dart';
import 'package:md_car_wash/pages/home_page/container1/homepage_container1_mobile.dart';
import 'package:md_car_wash/pages/home_page/container1/homepage_container1_tablet.dart';
import 'package:md_car_wash/responsiveLayout.dart';


class HomepageContainer1 extends StatelessWidget {
  const HomepageContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: HomepageContainer1Mobile(),
        tabletView: HomepageContainer1Tablet(),
        desktopView: HomepageContainer1Desktop(),
        largeScreenView: HomepageContainer1Desktop());
  }
}
