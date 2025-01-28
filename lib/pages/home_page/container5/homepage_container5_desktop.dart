import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:md_car_wash/controllers/homepage_container5_controller.dart';

import '../../../utils/custom_title.dart';

class HomepageContainer5Desktop extends StatelessWidget {
  HomepageContainer5Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 1100,
          maxHeight: 1300,
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTitle(title: "Our Gallery"),
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
        crossAxisCount: 4,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 2),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
          final project = projects[index];
          return ClipRRect(
            child: Stack(
              children: [
                Image.network(
                  project["image"]!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project["title"]!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(0, 1),
                              blurRadius: 3,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                    ],
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
