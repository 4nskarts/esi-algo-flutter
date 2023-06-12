import 'package:esi_algo/controller/homeController.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() => runApp(const MyApp());

// Global variable to store the data from the json file

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Fira Sans Condensed',
      ),
      home: Scaffold(
        body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) => Scaffold(
            appBar: AppBar(
              leading: const Icon(
                Icons.school,
              ),
              title: const Text("ESI Algorithms & Data Structures"),
              elevation: 0,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentIndex,
              onTap: (index) => controller.setCurrentIndex(index),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.info),
                  label: 'About',
                ),
              ],
            ),
            body: controller.tabs[controller.currentIndex],
          ),
        ),
      ),
    );
  }
}
