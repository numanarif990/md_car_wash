import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/nav_button_controller.dart';

class NavButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double fontSize;

  const NavButton({
    super.key,
    required this.text,
    required this.fontSize,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final NavButtonController controller = Get.put(NavButtonController(), tag: text);
   Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => controller.setHover(true),
      onExit: (_) => controller.setHover(false),
      cursor: SystemMouseCursors.click,
      child: Material(
        color: Colors.transparent, // Ensure no background color is applied
        child: InkWell(
          onTap: onTap,
          highlightColor: Colors.transparent, // Remove highlight color
          splashColor: Colors.transparent, // Remove splash color
          hoverColor: Colors.transparent, // Remove hover color
          child: Obx(() => Container(
            margin:  EdgeInsets.symmetric(horizontal: size.width * 0.01),
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width<1920 ? fontSize : 13,
                fontWeight: controller.isHovered.value ? FontWeight.bold : FontWeight.normal,
              ),
              duration: const Duration(milliseconds: 50), // Duration of the animation
              child: Text(text),
            )
          )),
        ),
      ),
    );
  }
}