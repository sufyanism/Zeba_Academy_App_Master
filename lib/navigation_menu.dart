import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:zeba_academy_education_app/features/pages/audio_book/screens/audio_book.dart';
import 'package:zeba_academy_education_app/features/pages/home_page/screens/home_page.dart';
import 'package:zeba_academy_education_app/features/pages/lesson_screen/screens/lesson_screen.dart';
import 'package:zeba_academy_education_app/features/pages/test_screen/screens/test_screen.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
    int _currentIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  List<Widget> body =  [
    const LessonScreen(),
    const AudioBook(),
    const HomePage(),
    Container(color: Colors.purple),
     const TestScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: kBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10),
          child: GNav(
            onTabChange: _navigateBottomBar,
            gap: 6,
            backgroundColor: kBackgroundColor,
            color: Colors.white,
            tabBackgroundColor: Colors.yellow,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            tabs: const [
              GButton(
                icon: Icons.space_dashboard_outlined,
                text: "Lessons",
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              GButton(
                icon: Icons.queue_music_rounded,
                text: "Audio Book",
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              GButton(
                icon: Icons.home_outlined,
                text: "Home",
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              GButton(
                icon: Icons.headphones_outlined,
                text: "Music and Podcast",
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
              GButton(
                icon: Icons.school_outlined,
                text: "Test",
                margin: EdgeInsets.symmetric(vertical: 10),
              ),
            ],
          ),
        ),
      ),
      body: body[_currentIndex],
    );
  }
}
