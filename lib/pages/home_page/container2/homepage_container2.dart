import 'package:flutter/material.dart';
import 'package:md_car_wash/pages/home_page/container2/homepage_container2_desktop.dart';
import 'package:md_car_wash/pages/home_page/container2/homepage_container2_tablet.dart';
import 'package:md_car_wash/responsiveLayout.dart';

import 'hompage_container2_mobile.dart';
class HomepageContainer2 extends StatelessWidget {
  const HomepageContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileView: HompageContainer2Mobile(), tabletView: HomepageContainer2Tablet(), desktopView: HomepageContainer2Desktop(), largeScreenView: HomepageContainer2Desktop());
  }
}
