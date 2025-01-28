import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:md_car_wash/widgets/navbar/navbar.dart';

import '../../controllers/home_page_controller_desktop.dart';

class DesktopHomepage extends StatelessWidget {
  const DesktopHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController controller = Get.put(HomePageController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: Obx(() {
          if (controller.widgets.isEmpty) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.blue,
            ));
          }
          return Column(
            children: [
              Navbar(),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.widgets.length,
                  itemBuilder: (context, index) {
                    if (index < controller.widgets.length) {
                      return controller.widgets[index];
                    } else {
                      return const Center(
                          child: CircularProgressIndicator(
                        color: Colors.blue,
                      ));
                    }
                  },
                ),
              ),
            ],
          );
        }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your WhatsApp functionality here
        },
        backgroundColor: Color(0xFF25D366), // WhatsApp green color
        child: Icon(
          FontAwesomeIcons.whatsapp,

          color: Colors.white,
          size: 34,
        ),
      ),
    );
  }
}
