import 'package:flutter/material.dart';
import 'recent_card.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color(0xFFF8D9EA),
          appBar: AppBar(
            toolbarHeight: 100,
            elevation: 0,
            backgroundColor: const Color(0xFFEFF9FF),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/banner.png'),
            ),
            bottom: const TabBar(
              indicatorColor: Color(0xFFAD19CB),
              labelColor: Colors.blueGrey,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 5.0,
              tabs: [
                Tab(
                  child: Text(
                    'Explore',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Recent',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Help Others',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: const [
                  RecentCard(),
                  RecentCard(),
                  RecentCard(),
                ],
              ),
              ListView(
                children: const [
                  RecentCard(),
                  RecentCard(),
                  RecentCard(),
                  RecentCard(),
                  RecentCard(),
                ],
              ),
              ListView(
                children: const [
                  RecentCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
