import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ScrollingController extends GetxController {
  late final ScrollController scrollController;
  late AnimationController animationController;
  var scrollPosition = 0.obs;  // This makes the value reactive
  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    // Do not initialize animationController here; we'll handle it in the StatefulWidget
  }

  void setupAnimationController(TickerProvider vsync) {
    animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 20),
    )..repeat();
    _animateScrolling();
  }

  void _animateScrolling() {
    animationController.addListener(() {
      if (scrollController.hasClients) {
        scrollController.jumpTo(
          (scrollController.offset + 1) % scrollController.position.maxScrollExtent,
        );
      }
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    animationController.dispose();
    super.onClose();
  }
}
