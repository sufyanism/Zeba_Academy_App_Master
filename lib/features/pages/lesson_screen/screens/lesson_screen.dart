import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/features/pages/lesson_screen/screens/lesson_category_list/lesson_category_list.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class LessonScreen extends StatefulWidget {
  const LessonScreen({super.key});

  @override
  State<LessonScreen> createState() => _LessonScreenState();
}

final List<Color> cardColors = [
  const Color.fromARGB(101, 7, 54, 8).withOpacity(0.7),
  const Color.fromARGB(146, 59, 10, 7).withOpacity(0.7),
  const Color.fromARGB(157, 77, 7, 71).withOpacity(0.7),
  const Color.fromARGB(144, 5, 6, 83).withOpacity(0.7),
  const Color.fromARGB(147, 77, 69, 6).withOpacity(0.7),
];

final List<Color> borderColor = [
  Colors.green,
  Colors.red,
  Colors.pink,
  Colors.blue.shade900,
  Colors.yellow,
];

final List<String> nameText = [
  "Elementary",
  "Intermediate",
  "Upper Intermediate",
  "Pre-advanced",
  "Advanced",
];

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lessons",
          style: TextStyle(
            fontSize: kAppBarSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
        color: kBackgroundColor,
        child: ListView.separated(
          separatorBuilder: (c, i) {
            return const SizedBox(height: 30.0);
          },
          itemCount: cardColors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LessonCatScreen(),
                  ),
                );
              },
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cardColors[index],
                  border: Border.all(width: 2.5, color: borderColor[index]),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      nameText[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        shadows: [
                          for (double i = 0; i < 5; i++)
                            Shadow(
                              color: borderColor[index],
                              blurRadius: 2 * i,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
