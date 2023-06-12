import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Made with 💜 By M. Anas"),
          SizedBox(height: 4),
          Text("To Contribute, Check My GitHub: @4nskarts"),
        ],
      ),
    );
  }
}
