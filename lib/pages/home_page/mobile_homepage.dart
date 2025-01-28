import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../controllers/home_page_controller_desktop.dart';
import '../../widgets/navbar/navLogo.dart';
import '../../widgets/sidebar/sidebar.dart';
import 'package:get/get.dart';
class MobileHomepage extends StatelessWidget {
  const MobileHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController controller = Get.put(HomePageController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // Wrap the AppBar in a Builder widget to provide a new context
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white,), // Hamburger menu icon
              onPressed: () {
                // Open the drawer using the current Scaffold's context
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        automaticallyImplyLeading: false, // Prevent default leading icon
        title: Align(
          alignment: Alignment.centerRight, // Align logo to the right side
          child: NavLogo(
            fontSize: 18,

          ),
        ),
      ),
      drawer: const Sidebar(), // Your Sidebar widget
      body: Obx(() {
        if (controller.widgets.isEmpty) {
          return const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ));
        }
        return Column(
          children: [
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