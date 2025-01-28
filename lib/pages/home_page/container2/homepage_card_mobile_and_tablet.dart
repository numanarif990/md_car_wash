import 'package:flutter/material.dart';
import 'package:md_car_wash/utils/customElevatedButton.dart';

class HomepageCardMobileAndTablet extends StatelessWidget {
  final String header;
  final String price;
  final String description;
  final List<String> features;
  final String buttonText;
  final IconData buttonIcon;
  final VoidCallback onButtonPressed;
  final Color color;

  const HomepageCardMobileAndTablet({
    super.key,
    required this.color,
    required this.header,
    required this.price,
    required this.description,
    required this.features,
    required this.buttonText,
    required this.buttonIcon,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Stack(
        clipBehavior: Clip.none, // Allows Positioned elements outside the bounds
        children: [
          // Main card
          Container(
            width: size.width*0.8,
            height: size.width*0.9,
            padding: EdgeInsets.symmetric(vertical: size.width*0.04, horizontal: size.width*0.02),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                // Price and description
                Column(
                  children: [
                     Text(
                      "*4WD 5 Extra (SUV/AWD/Station Wagon)",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: size.width*0.03, color: Colors.white),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      price,
                      style:  TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width*0.06,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "per month",
                      style: TextStyle(fontSize: size.width*0.04, color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    // Placeholder description
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: size.width*0.033, color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    // Feature list
                    Wrap(
                      spacing: 30,
                      runSpacing: 2,
                      children: features.map((feature) => FeatureItem(text: feature)).toList(),
                    ),
                    const SizedBox(height: 20),
                    // Buttons
                    Customelevatedbutton(width: 120, height: 35, iconSize: 17, fontSize: 12, icon: Icons.book, text: "Book Now",)
                  ],
                ),
              ],
            ),
          ),

          // Positioned Header
          Positioned(
            top: -20, // Positioned above the card
            left:  size.width*0.24,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                header,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String text;

  const FeatureItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.check, color: Colors.white, size: 16),
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}