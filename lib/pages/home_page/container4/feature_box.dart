import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final String title;
  const FeatureBox({super.key, this.title = "20 Years Experience"});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "| "+title,
            style: TextStyle(
                fontFamily: 'actor',
                fontWeight: FontWeight.bold,
            fontSize: 20
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("20 years of industry experience in offical\npartnership with luxury dealerships.")
        ],
      ),
    );
  }
}
