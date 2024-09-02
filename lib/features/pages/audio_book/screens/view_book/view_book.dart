import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:zeba_academy_education_app/features/pages/audio_book/screens/play_book/play_book.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class ViewBook extends StatefulWidget {
  const ViewBook({super.key});

  @override
  State<ViewBook> createState() => _ViewBookState();
}

class _ViewBookState extends State<ViewBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Atomic Habbit".toUpperCase(),
          style: const TextStyle(
            fontSize: kAppBarSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 60.0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.bookmark_border_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "$kAssetCategoryPath/category1.png",
                      height: 150,
                      width: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(width: 30.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Atomic Habits",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "James Clear",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        "6 Chapters",
                        style: TextStyle(fontSize: 14.0, color: Colors.white),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        "Intermediate Level",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Text(
                "Caption".toUpperCase(),
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 24.0),
              Text(
                "Chapters".toUpperCase(),
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                height: 400,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (e) => const PlayBook()));
                  },
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 65,
                    ),
                    itemCount: 6,
                    itemBuilder: (c, index) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 5, 34, 77),
                            width: 2),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Text(
                                "Chapter 1",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: CircularPercentIndicator(
                                radius: 20,
                                lineWidth: 2,
                                percent: 0.4,
                                circularStrokeCap: CircularStrokeCap.round,
                                center: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                  ),
                                  child: const Text("40%",style: TextStyle(fontSize: 10,color: Colors.white),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
