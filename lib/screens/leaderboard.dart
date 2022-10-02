import 'package:flutter/material.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F1FA),
      body: Center(
        child: Image.asset(
          'assets/images/leaderboard.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
