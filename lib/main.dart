import 'package:flutter/material.dart';

import 'package:esi_algo/view/done.dart';
import 'package:esi_algo/view/home.dart';
import 'package:esi_algo/view/saved.dart';

void main() => runApp(const MyApp());

// Global variable to store the data from the json file

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  // this is a comment

  final tabs = [
    HomeScreen(),
    SavedScreen(),
    DoneScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Fira Sans Condensed',
      ),
      home: Scaffold(
        body: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.school,
            ),
            title: const Text("ESI Algorithms & Data Structures"),
            elevation: 0,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Saved',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.done),
                label: 'Done',
              ),
            ],
          ),
          body: tabs[_currentIndex],
        ),
      ),
    );
  }
}
