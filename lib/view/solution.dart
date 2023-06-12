import 'package:flutter/material.dart';

class SolutionScreen extends StatelessWidget {
  final td;

  const SolutionScreen({
    super.key,
    required this.td,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${td['td']} | Solution"),
        ),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: ListView.builder(
              itemCount: td['exercises'].length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.grey[900],
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Text(
                                "Question ${td['exercises'][index]['id']}\n")),
                        Text("${td['exercises'][index]['description']}"),
                        const SizedBox(
                          height: 16,
                        ),
                        const Center(child: Text("Implementation\n")),
                        Text(
                          "${td['exercises'][index]['code']}",
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
