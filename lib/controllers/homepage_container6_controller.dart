import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
class HomepageController extends GetxController {
  final CardSwiperController cardSwiperController = CardSwiperController();

  final RxList<Map<String, String>> users = [
    {
      'name': 'John Doe',
      'email': 'johndoe@example.com',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio.',
      'image': 'https://cdn.pixabay.com/photo/2016/09/24/03/20/man-1690965_1280.jpg',
    },
    {
      'name': 'Jane Smith',
      'email': 'janesmith@example.com',
      'description': 'Suspendisse potenti. Nunc feugiat mi a tellus consequat imperdiet.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio.',
      'image': 'https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445_1280.jpg',
    },
    {
      'name': 'Alice Johnson',
      'email': 'alicejohnson@example.com',
      'description': 'Curabitur sodales ligula in libero. Sed dignissim lacinia nunc.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio.',
      'image': 'https://cdn.pixabay.com/photo/2016/11/23/00/57/adult-1851571_1280.jpg',
    },
  ].obs;

  final RxList<int> ratings = [4, 5, 3].obs; // Example ratings for each user

  @override
  void onClose() {
    cardSwiperController.dispose();
    super.onClose();
  }
}