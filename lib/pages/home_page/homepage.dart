import 'package:flutter/material.dart';
import 'package:md_car_wash/pages/home_page/desktop_homepage.dart';
import 'package:md_car_wash/pages/home_page/mobile_homepage.dart';
import 'package:md_car_wash/pages/home_page/tablet_homepage.dart';
import 'package:md_car_wash/responsiveLayout.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: MobileHomepage(),
        tabletView: TabletHomepage(),
        desktopView: DesktopHomepage(),
        largeScreenView: DesktopHomepage());
  }
}
