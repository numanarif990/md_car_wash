import 'package:flutter/material.dart';
import 'package:md_car_wash/utils/customElevatedButton.dart';

class HomepageCard extends StatelessWidget {
  final String header;
  final String price;
  final String description;
  final List<String> features;
  final String buttonText;
  final IconData buttonIcon;
  final VoidCallback onButtonPressed;
  final Color color;

  const HomepageCard({
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
            width: 350,
            height: 360,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
                const SizedBox(height: 15),
                // Price and description
                Column(
                  children: [
                    const Text(
                      "*4WD 5 Extra (SUV/AWD/Station Wagon)",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      price,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "per month",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    const SizedBox(height: 15),
                    // Placeholder description
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(height: 15),
                    // Feature list
                    Wrap(
                      spacing: 30,
                      runSpacing: 2,
                      children: features.map((feature) => FeatureItem(text: feature)).toList(),
                    ),
                    const SizedBox(height: 20),
                    // Buttons
                     Customelevatedbutton(width: 130, height: 45, iconSize: 20, fontSize: 14, icon: Icons.book, text: "Book Now",)
                  ],
                ),
              ],
            ),
          ),

          // Positioned Header
          Positioned(
            top: -20, // Positioned above the card
            left:  118,
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
