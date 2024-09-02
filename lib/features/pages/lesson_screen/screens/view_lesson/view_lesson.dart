import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/features/pages/lesson_screen/screens/lesson_listening/lesson_listening_screen.dart';
import 'package:zeba_academy_education_app/features/pages/lesson_screen/screens/quiz_screen/quiz_screen.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class LessonViewScreen extends StatefulWidget {
  const LessonViewScreen({super.key});

  @override
  State<LessonViewScreen> createState() => _LessonViewScreenState();
}

class _LessonViewScreenState extends State<LessonViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lesson 1",
          style: TextStyle(fontSize: kAppBarSize, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 5,
            bottom: 50,
            right: 0,
            left: 0,
            child: SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Elementary Lesson 1",
                          style: TextStyle(
                              fontSize: kBodySize,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (e) => const LessonListening()));
                            },
                            child: Text("Listen Audio",style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        "$kAssetLessonPath/lesson1.png",
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SliderTheme(
                        data: Theme.of(context).sliderTheme.copyWith(
                              trackHeight: 7,
                              activeTrackColor:
                                  const Color.fromARGB(255, 141, 94, 6),
                              inactiveTrackColor: Colors.white,
                              thumbColor: const Color(0xffF56F65),
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 8.5,
                                  disabledThumbRadius: 12),
                              overlayShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 9.5,
                                  disabledThumbRadius: 12),
                            ),
                        child: SizedBox(
                          width: double.infinity,
                          child: Slider(
                            value: 0.057,
                            onChanged: (newSliderValue) {},
                          ),
                        )),
                    const SizedBox(height: 4),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "00:57",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Text(
                            "23:57",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.rotate_left,
                            size: 50,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.play_circle_outline_sharp,
                            size: 70,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.rotate_right_sharp,
                            size: 50,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.5,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: double.infinity,
              color: kBackgroundColor.withOpacity(0.4),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (e) => const QuizScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 2),
                    color: const Color.fromARGB(255, 2, 23, 92),
                  ),
                  child: const Center(
                    child: Text(
                      "Start Test",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
