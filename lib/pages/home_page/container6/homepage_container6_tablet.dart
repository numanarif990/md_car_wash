import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:md_car_wash/utils/image_strings.dart';

import '../../../controllers/homepage_container6_controller.dart';class HomepageContainer6Tablet extends StatelessWidget {
  const HomepageContainer6Tablet({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomepageController());

    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 70),
      constraints: BoxConstraints(
        maxWidth: 1300,
        maxHeight: 450,
      ),
      child: Column(

        children: [
          const SizedBox(height: 30),
          Text("Testimonials",style: TextStyle(fontSize: 25, fontFamily: 'poppins'),),
          const SizedBox(height: 10),
          Container(
              height: 55,
              width: 130,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Image.asset(MdImages.google_image,fit: BoxFit.cover,)),
          const SizedBox(height: 10),
          Flexible(
            child: Obx(
                  () => CardSwiper(
                controller: controller.cardSwiperController,
                cardsCount: controller.users.length,
                numberOfCardsDisplayed: 3,
                backCardOffset: const Offset(40, 40),
                padding: const EdgeInsets.all(8.0),
                cardBuilder: (
                    context,
                    index,
                    horizontalThresholdPercentage,
                    verticalThresholdPercentage,
                    ) {
                  final user = controller.users[index];

                  return Center(
                    child: SizedBox(
                      width: 300,
                      height: 220,
                      child: Card(

                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header with avatar and name
                            ListTile(
                              leading: CircleAvatar(
                                radius: 14,
                                backgroundImage: NetworkImage(user['image']!),
                              ),
                              title: Text(
                                user['name']!,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: const Text(
                                '3 reviews • 2 months ago', // Placeholder text
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(Icons.more_vert),
                                onPressed: () {
                                  // Handle more options
                                },
                              ),
                            ),
                            const Divider(height: 1),

                            // Rating stars
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                              child: Row(
                                children: List.generate(5, (starIndex) {
                                  return Icon(
                                    starIndex < controller.ratings[index]
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: Colors.amber,
                                    size: 13,
                                  );
                                }),
                              ),
                            ),

                            // Description text
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                user['description']!,
                                style: const TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),

                            // Footer with like and share buttons
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.thumb_up,size: 14,),
                                        onPressed: () {
                                          // Handle like action
                                        },
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.share,size: 14,),
                                        onPressed: () {
                                          // Handle share action
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
