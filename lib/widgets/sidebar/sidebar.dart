import 'package:flutter/material.dart';
import 'package:md_car_wash/utils/colors.dart';
import 'package:md_car_wash/widgets/navbar/navLogo.dart';
import 'package:md_car_wash/widgets/navbar/nav_button.dart';
class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: const EdgeInsets.all(8), // Adjust padding as needed
            height: 70, // Set the desired height
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: ListTile(
              title: NavLogo(fontSize: 17),
              subtitle: const Text(
                "muhammadnumanarif04@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
       ListTile(
         title: Text("BASIC WASH"),
         onTap: (){},
       ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("SUPER WASH"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("DELUXE WASH"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("PREMIUM WASH"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("ULTIMATE WASH"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("ABOUT US"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          ListTile(
            title: Text("CONTACT US"),
            onTap: (){},
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
        ],
      ),
    )
    ;
  }
}
