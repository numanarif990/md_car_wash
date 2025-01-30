import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:md_car_wash/controllers/homepage_container5_controller.dart';

import '../../../utils/custom_title.dart';

class HomepageContainer5Tablet extends StatelessWidget {
  const HomepageContainer5Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8.0),

        constraints: BoxConstraints(
          maxWidth: 1100,
          maxHeight: 1250,
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTitle(title: "Our Gallery",),
            SizedBox(height: 20),
            Text(
              "Welcome to Washmaster, where we redefine the art of car care with our unparalleled hand car wash services. At Washmaster, we believe in more than just cleaning vehicles.",
              style: TextStyle(fontSize: 28),
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
    double screenWidth = MediaQuery.of(context).size.width;

    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: screenWidth > 900 ? 4 : 3, // Dynamic for tablets
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        repeatPattern: QuiltedGridRepeatPattern.same,
        pattern: [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 2),
        ],
      ),
      padding: const EdgeInsets.all(16),
      childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
          final project = projects[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(16), // Slightly larger rounding
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
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: Text(
                    project["title"]!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30, // Responsive text size
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 4,
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
