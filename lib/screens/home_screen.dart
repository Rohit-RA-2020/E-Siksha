import 'package:bottom_bar/bottom_bar.dart';
import 'package:chegg_app/screens/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/provider.dart';
import 'dashboard.dart';
import 'discuss.dart';
import 'leaderboard.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  final _pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int currentPage = ref.watch(pageProvider);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          ref.watch(pageProvider.notifier).state = index;
        },
        children: const <Widget>[
          DashBoard(),
          LeaderBoard(),
          QuizPage(),
          Discuss(),
        ],
      ),
      bottomNavigationBar: BottomBar(
        height: 65,
        selectedIndex: currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          ref.watch(pageProvider.notifier).state = index;
        },
        items: <BottomBarItem>[
          const BottomBarItem(
            icon: Icon(Icons.dashboard_outlined),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          const BottomBarItem(
            icon: Icon(Icons.assessment_outlined),
            title: Text('LeaderBoard'),
            activeColor: Colors.red,
            // Optional
          ),
          BottomBarItem(
            icon: const Icon(Icons.quiz_outlined),
            title: const Text('Quiz'),
            activeColor: Colors.greenAccent.shade700,
            // Optional
          ),
          const BottomBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            title: Text('Discuss'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
