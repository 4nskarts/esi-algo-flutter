import 'package:esi_algo/view/solution.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SafeArea(
        child: Column(
          children: [
            // done for now
            StatWidget(),
            SizedBox(height: 12),
            // Search Bar Widget
            SearchWidget(),
            SizedBox(height: 24),
            Text(
              'Problems and Solutions',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Colors.tealAccent,
              indent: 86,
              endIndent: 86,
            ),
            // TD Widget
          ],
        ),
      ),
    );
  }
}

class StatWidget extends StatelessWidget {
  const StatWidget({super.key});

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pending',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.pending_actions,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  '10',
                  style: TextStyle(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.done_all,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  '10',
                  style: TextStyle(
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

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Yet to be done'),
            Icon(Icons.pending_actions),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: Center(
              child: Text(
            "15",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ],
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 8),
          Text('Search'),
        ],
      ),
    );
  }
}

class TDWidget extends StatelessWidget {
  const TDWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.assessment_outlined,
      ),
      title: Text("hello world!"
          // "TD ${items?[0]['id']}",
          ),
      subtitle: Text("topic brought to you by simoh"
          // items?[0]['topic'],
          ),
      trailing: IconButton(
        icon: const Icon(Icons.arrow_forward_ios),
        onPressed: () {
          SolutionScreen();
        },
      ),
    );
  }
}
