import 'package:flutter/material.dart';
import 'package:md_car_wash/responsiveLayout.dart';
import 'package:md_car_wash/widgets/navbar/desktopnavbar.dart';
import 'package:md_car_wash/widgets/navbar/mobilenavbar.dart';
import 'package:md_car_wash/widgets/navbar/tabletnavbar.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: Mobilenavbar(),
        tabletView: Tabletnavbar(),
        desktopView: DesktopNavBar(),
        largeScreenView: DesktopNavBar());
  }
}
