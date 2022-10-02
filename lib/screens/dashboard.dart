import 'package:flutter/material.dart';
import '../widgets/progress_widget.dart';
import '../widgets/search_box.dart';
import '../widgets/subjects_bubble.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color(0xFFEFF9FF),
        elevation: 0,
        actions: [
          Image.asset('assets/images/profile.png'),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Hello',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Rohit Ranjan 👋',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: const [
          SearchBox(
            text: 'Search',
            radius: 25.0,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Courses',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Subjects(),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Continue your learning',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          LearningProgress(),
        ],
      ),
    );
  }
}

class LearningProgress extends StatelessWidget {
  const LearningProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: 200,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: const [
              ProgressWidget(
                name: 'Physics',
                color: Color(0xFFBFD6FF),
                photo: 'assets/images/motion.png',
              ),
              ProgressWidget(
                name: 'HydroCarbons',
                color: Color(0xFFA5E6C3),
                photo: 'assets/images/chemical.png',
              ),
              ProgressWidget(
                name: 'Algorithms',
                color: Colors.white,
                photo: 'assets/images/algorithm.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Subjects extends StatelessWidget {
  const Subjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        childAspectRatio: (1 / .4),
      ),
      children: const [
        SubjectBubble(
          title: 'Physics',
          color: Color(0xFFFBC5C5),
          img: 'atom',
        ),
        SubjectBubble(
          title: 'Chemistry',
          color: Color(0xFF4FD3C4),
          img: 'lab',
        ),
        SubjectBubble(
          title: 'Maths',
          color: Color.fromARGB(255, 241, 241, 75),
          img: 'numbers',
        ),
        SubjectBubble(
          title: 'English',
          color: Color(0xFFFFC18E),
          img: 'eng',
        ),
      ],
    );
  }
}
