import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:md_car_wash/controllers/homepage_container5_controller.dart';

import '../../../utils/custom_title.dart';

class HomepageContainer5Mobile extends StatelessWidget {
  const HomepageContainer5Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8.0),

        constraints: BoxConstraints(
          maxWidth: 1100,
          maxHeight: 1650,
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTitle(title: "Our Gallery",),
            SizedBox(height: 20),
            Text(
              "Welcome to Washmaster, where we redefine the art of car care with our unparalleled hand car wash services. At\nWashmaster, we believe in more than just cleaning vehicles.",
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProjectGrid(projects: HomepageContainer5Controller.projects),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ProjectGrid extends StatelessWidget {
  final List<Map<String, String>> projects;

  const ProjectGrid({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 2, // Reduced for better mobile layout
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        repeatPattern: QuiltedGridRepeatPattern.same,
        pattern: [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 2),
        ],
      ),
      padding: const EdgeInsets.all(12),
      childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
          final project = projects[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(12), // Rounded corners for a softer look
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.network(
                    project["image"]!,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black54, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  left: 12,
                  right: 12,
                  child: Text(
                    project["title"]!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16, // Slightly smaller for mobile
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 3,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        childCount: projects.length,
      ),
    );
  }
}
