import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/features/pages/audio_book/screens/books_category_list/books_category.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class AudioBook extends StatefulWidget {
  const AudioBook({super.key});

  @override
  State<AudioBook> createState() => _AudioBookState();
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

class _AudioBookState extends State<AudioBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Audio Book",
          style: TextStyle(
            fontSize: kAppBarSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
                    builder: (context) => const BookCategory(),
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
