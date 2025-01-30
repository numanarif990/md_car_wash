import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final String title;
  final double titleFontsize;
  final double descriptionFontsize;

  const FeatureBox(
      {super.key,
      this.title = "20 Years Experience",
      this.titleFontsize = 20,
      this.descriptionFontsize = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "| " + title,
            style: TextStyle(
                fontFamily: 'actor', fontWeight: FontWeight.bold, fontSize: titleFontsize),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "20 years of industry experience in offical\npartnership with luxury dealerships.",style: TextStyle(fontSize: descriptionFontsize),)
        ],
      ),
    );
  }
}
