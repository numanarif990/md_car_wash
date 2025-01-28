import 'package:get/get.dart';
import 'package:md_car_wash/utils/image_strings.dart';

class BackgroundSliderController extends GetxController {
  // List of image URLs or asset paths
  final List<String> images = [
    MdImages.container1_image1,
    MdImages.container1_image2,
    MdImages.container1_image3,
    MdImages.container1_image4,
  ];

  // Observable for the current index
  var currentIndex = 0.obs;

  // Method to update the index
  void updateIndex(int index) {
    currentIndex.value = index;
  }
}
