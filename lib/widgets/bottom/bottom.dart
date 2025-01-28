import 'package:flutter/material.dart';
import 'package:md_car_wash/responsiveLayout.dart';
import 'package:md_car_wash/widgets/bottom/desktop_bottom.dart';
import 'package:md_car_wash/widgets/bottom/mobile_bottom.dart';
import 'package:md_car_wash/widgets/bottom/tablet_bottom.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileView: MobileBottom(),
        tabletView: TabletBottom(),
        desktopView: DesktopBottom(),
        largeScreenView: DesktopBottom());
  }
}
