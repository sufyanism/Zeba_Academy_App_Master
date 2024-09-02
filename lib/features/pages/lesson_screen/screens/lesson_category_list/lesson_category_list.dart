import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/features/pages/lesson_screen/screens/view_lesson/view_lesson.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class LessonCatScreen extends StatefulWidget {
  const LessonCatScreen({super.key});

  @override
  State<LessonCatScreen> createState() => _LessonCatScreenState();
}

class _LessonCatScreenState extends State<LessonCatScreen> {
  final List<Map<String, dynamic>> lessonList = [
    {
      "title": "Lesson 1",
      "images": "$kAssetLessonPath/lesson1.png",
    },
    {
      "title": "Lesson 2",
      "images": "$kAssetLessonPath/lesson2.png",
    },
    {
      "title": "Lesson 3",
      "images": "$kAssetLessonPath/lesson3.png",
    },
    {
      "title": "Lesson 4",
      "images": "$kAssetLessonPath/lesson4.png",
    },
    {
      "title": "Lesson 5",
      "images": "$kAssetLessonPath/lesson5.png",
    },
    {
      "title": "Lesson 6",
      "images": "$kAssetLessonPath/lesson6.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Elementary",
          style: TextStyle(fontSize: kAppBarSize, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (e) => const LessonViewScreen()));
            },
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 20,
                mainAxisExtent: 190,
              ),
              itemCount: lessonList.length,
              itemBuilder: (_, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset(
                        "${lessonList.elementAt(index)['images']}",
                        fit: BoxFit.fitHeight,
                        height: 140,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${lessonList.elementAt(index)['title']}",
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Icon(
                          Icons.bookmark_outline,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
