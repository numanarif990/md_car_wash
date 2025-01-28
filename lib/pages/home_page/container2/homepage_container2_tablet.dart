import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:md_car_wash/controllers/homepage_container2_smooth_horizontal_contarolling.dart';
import 'package:md_car_wash/pages/home_page/container2/homepage_card_mobile_and_tablet.dart';
import 'package:md_car_wash/utils/custom_title.dart';

import '../../../utils/constants.dart';
import 'homepage_card_desktop.dart';
class HomepageContainer2Tablet extends StatefulWidget {
  const HomepageContainer2Tablet({super.key});

  @override
  State<HomepageContainer2Tablet> createState() => _HomepageContainer2TabletState();
}

class _HomepageContainer2TabletState extends State<HomepageContainer2Tablet>
    with TickerProviderStateMixin {
  late ScrollingController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(ScrollingController());
    controller.setupAnimationController(this);
    _setupCircularScrolling();
  }

  void _setupCircularScrolling() {
    controller.animationController.addListener(() {
      if (controller.scrollController.hasClients) {
        final maxScroll = controller.scrollController.position.maxScrollExtent;
        final currentScroll = controller.scrollController.offset;

        if (currentScroll >= maxScroll) {
          controller.scrollController.jumpTo(0); // Reset to start
        } else {
          controller.scrollController
              .jumpTo(currentScroll + 1); // Smoothly scroll
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width <= 1920 ? size.width : Constants.desktopwidth,
      height: 600,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTitle(title: "Pricing"),
          SizedBox(
            height: 20,
          ),
          Text(
            "It is a long established fact that a reader will be distracted by the readable content of a page\nwhen looking at its layout. ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'montserrat',
                fontSize: 18
            ),
          ),
          Container(
            constraints: BoxConstraints(
                maxWidth: size.width <= 1920 ? size.width : Constants.desktopwidth,
                maxHeight: 450
            ),
            child: SingleChildScrollView(
              controller: controller.scrollController,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(), // Smoother manual scrolling
              child: Row(
                children: List.generate(10, (index) => _buildHomepageCard(index)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomepageCard(int index) {
    final colors = [
      Colors.lightBlue,
      Colors.lightGreen,
      Colors.greenAccent,
      Colors.blueGrey,
      Colors.lightBlueAccent,
      Colors.blueGrey,
      Colors.greenAccent,
    ];

    return Row(
      children: [
        HomepageCardMobileAndTablet(
          header: "Basic Wash",
          price: "24.9",
          color: colors[index % colors.length],
          description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          features: [
            "Soft Cloth Wash",
            "Chamios Dry",
            "Tyres Glossed",
            "Add Spray Wax \$15",
            "Soft Cloth Wash",
            "Chamios Dry",
            "Tyres Glossed",
            "Add Spray Wax \$15",
          ],
          buttonText: "Book Now",
          buttonIcon: Icons.book_online,
          onButtonPressed: () {},
        ),
        const SizedBox(width: 30),
      ],
    );
  }

  @override
  void dispose() {
    controller.animationController.dispose();
    super.dispose();
  }
}
