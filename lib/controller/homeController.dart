import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../view/info.dart';
import '../view/home.dart';

class HomeController extends GetxController {
  List items = [];

  // Handling the bottom Navigation Bar
  int currentIndex = 0;

  final tabs = [
    HomeScreen(),
    InfoScreen(),
  ];

  setCurrentIndex(int index) {
    currentIndex = index;
    update();
  }

  // Fetch content from the json file
  Future<void> loadJson() async {
    final String response =
        await rootBundle.loadString('lib/model/solutions.json');
    final data = await json.decode(response);
    items = data['S1'];
  }

  // Handling the Json file
  String getProblem(int id) => items[0]["exercises"][id]["description"];
  String getCode(int id) => items[0]["exercises"][id]["code"];

  // Checkbox add to saved
  bool isChecked = false;
  void toggleCheckbox(bool value) {
    isChecked = value;
    update();
  }
}
