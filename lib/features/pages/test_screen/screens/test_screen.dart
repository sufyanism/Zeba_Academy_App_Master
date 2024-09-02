import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/features/pages/test_screen/screens/category_test_screen/category_test_screen.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Test",
          style: TextStyle(fontSize: kAppBarSize, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (e) => const TestCatScreen()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Elementary",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) {
                      return Container(
                        width: 140,
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                "$kAssetLessonPath/lesson1.png",
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Test #1",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, index) {
                      return const SizedBox(
                        height: 40.0,
                        width: 20,
                      );
                    },
                    itemCount: 5),
              ),
              const SizedBox(height: 20.0),
              InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Intermediate",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) {
                      return Container(
                        width: 140,
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                "$kAssetLessonPath/lesson1.png",
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Test #1",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, index) {
                      return const SizedBox(
                        height: 40.0,
                        width: 20,
                      );
                    },
                    itemCount: 5),
              ),
              const SizedBox(height: 20.0),
              InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upper Intermediate",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) {
                      return Container(
                        width: 140,
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                "$kAssetLessonPath/lesson1.png",
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Test #1",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, index) {
                      return const SizedBox(
                        height: 40.0,
                        width: 20,
                      );
                    },
                    itemCount: 5),
              ),
              const SizedBox(height: 20.0),
              InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pre-Advanced",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) {
                      return Container(
                        width: 140,
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                "$kAssetLessonPath/lesson1.png",
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Test #1",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, index) {
                      return const SizedBox(
                        height: 40.0,
                        width: 20,
                      );
                    },
                    itemCount: 5),
              ),
              const SizedBox(height: 20.0),
              InkWell(
                onTap: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Advanced",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) {
                      return Container(
                        width: 140,
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                "$kAssetLessonPath/lesson1.png",
                                width: 150,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Test #1",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, index) {
                      return const SizedBox(
                        height: 40.0,
                        width: 20,
                      );
                    },
                    itemCount: 5),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
