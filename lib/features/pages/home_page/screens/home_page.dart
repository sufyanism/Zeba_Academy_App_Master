import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zeba_academy_education_app/features/pages/audio_book/screens/books_category_list/books_category.dart';
import 'package:zeba_academy_education_app/features/pages/lesson_screen/screens/lesson_category_list/lesson_category_list.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  final List<Map<String, dynamic>> categoryList = [
    {
      "title": "Atomic Habits",
      "images": "$kAssetCategoryPath/category1.png",
    },
    {
      "title": "The Psychology of Money",
      "images": "$kAssetCategoryPath/category2.png",
    },
    {
      "title": "How to Train your Mind",
      "images": "$kAssetCategoryPath/category3.png",
    },
    {
      "title": "The Courage to be Disliked",
      "images": "$kAssetCategoryPath/category4.png",
    },
    {
      "title": "Ikigai",
      "images": "$kAssetCategoryPath/category5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Good Morning!",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(20),
                          child: Image.asset("$kAssetProFilePath/photo2.png",fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Stack(
                children: [
                  Positioned(
                    top: 76,
                    right: 110,
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: kBackgroundColor),
                          ),
                          SizedBox(width: 5),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Weekly Studies",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: kBackgroundColor),
                                softWrap: true,
                              ),
                              SizedBox(width: 3),
                              Text(
                                "hours",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: kBackgroundColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 280,
                    child: Lottie.asset(
                      "$kAssetImagePath/home_screen.json",
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.85,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "Last Lesson",
                    style: TextStyle(
                        fontSize: kBodySize,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (e) => const LessonCatScreen())),
                    child: const Text(
                      "more",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              "${lessonList.elementAt(index)['images']}",
                              width: 150,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${lessonList.elementAt(index)['title']}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              const Icon(
                                Icons.bookmark_border_outlined,
                                size: 14,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (_, i) {
                    return const SizedBox(width: 20);
                  },
                  itemCount: lessonList.length,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "Last Audio Book",
                    style: TextStyle(
                        fontSize: kBodySize,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (e) => const BookCategory())),
                    child: const Text(
                      "more",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 180,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "${categoryList.elementAt(index)['images']}",
                                width: 150,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    "${categoryList.elementAt(index)['title']}",
                                    maxLines: 3,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                const Icon(
                                  Icons.bookmark_border_outlined,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, i) {
                      return const SizedBox(width: 15);
                    },
                    itemCount: categoryList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
