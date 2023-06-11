import 'package:flutter/material.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Solution Screen"),
      ),
      body: ElevatedButton(
        onPressed: () {},
        child: const Text("Solution Screen"),
      ),
    );
  }
}
