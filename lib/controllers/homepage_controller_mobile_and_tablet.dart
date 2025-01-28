import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:md_car_wash/pages/home_page/container1/homepage_container1.dart';
import 'package:md_car_wash/pages/home_page/container2/homepage_container2.dart';
import 'package:md_car_wash/pages/home_page/container3/homepage_container3.dart';
import 'package:md_car_wash/pages/home_page/container4/homepage_container4.dart';
import 'package:md_car_wash/pages/home_page/container5/homepage_container5.dart';
import 'package:md_car_wash/pages/home_page/container6/homepage_container6.dart';
import 'package:md_car_wash/utils/colors.dart';
import 'package:md_car_wash/widgets/bottom/bottom.dart';

class HomePageController extends GetxController {
  final widgets = <Widget>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadInitalData();
  }

  Future<void> _loadInitalData() async {
    await Future.delayed(const Duration(milliseconds: 30));
    widgets.addAll([
      HomepageContainer1(),
      _buildDivider(Get.size),
      HomepageContainer2(),
      _buildDivider(Get.size),
      HomepageContainer3(),
      _buildDivider(Get.size),
      HomepageContainer4(),
      _buildDivider(Get.size),
      HomepageContainer5(),
      _buildDivider(Get.size),
      HomepageContainer6(),
      Bottom()
    ]);
  }

  static Widget _buildDivider(Size size) {
    return Container(
      width: size.width,
      height: 0.3,
      color: AppColors.primaryColor,
    );
  }

}