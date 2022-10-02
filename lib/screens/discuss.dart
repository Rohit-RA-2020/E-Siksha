import 'package:chegg_app/widgets/search_box.dart';
import 'package:flutter/material.dart';
import '../widgets/tab_bar_view.dart';

class Discuss extends StatelessWidget {
  const Discuss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF9FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEFF9FF),
        elevation: 0,
        title: const Text(
          'DISCUSS',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 10,
                    ),
                  ),
                ),
              ),
              child: const Text(
                'Create study group',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: const [
          SearchBox(text: 'Search for topics, subjects...', radius: 20),
          CustomTabBar(),
        ],
      ),
    );
  }
}
