import 'package:esi_algo/controller/homeController.dart';
import 'package:esi_algo/view/solution.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => FutureBuilder(
          future: controller.loadJson(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.tealAccent,
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: SafeArea(
                  child: Column(
                    children: [
                      // done for now
                      StatWidget(
                        s1: controller.items.length, s2: 0, // For now,
                      ),
                      const SizedBox(height: 12),
                      // Search Bar Widget
                      SearchWidget(),
                      const SizedBox(height: 24),
                      const Text(
                        'Problems and Solutions',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(
                        color: Colors.tealAccent,
                        indent: 86,
                        endIndent: 86,
                      ),

                      // displaying TDs
                      Expanded(
                        child: ListView.builder(
                          itemCount: controller.items.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Checkbox(
                                value: controller.isChecked,
                                onChanged: (value) {
                                  controller.toggleCheckbox(value!);
                                },
                                activeColor: Colors.teal,
                              ),
                              title: Text(controller.items[index]['td']),
                              subtitle: Text(controller.items[index]['topic']),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.tealAccent,
                              ),
                              onTap: () => Get.to(
                                  SolutionScreen(td: controller.items[index])),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}

class StatWidget extends StatelessWidget {
  final s1, s2;
  const StatWidget({
    super.key,
    required this.s1,
    required this.s2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Card(
          color: Colors.grey[900],
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Semester 01',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.line_axis,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '$s1   TD/Exams',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        )),
        Expanded(
            child: Card(
          color: Colors.grey[900],
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Semester 02',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.link,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '$s2   TD/Exam',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        )),
      ],
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: const BorderRadius.all(Radius.circular(24)),
      ),
      child: const Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 8),
          Text('Search'),
        ],
      ),
    );
  }
}
