import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/features/pages/audio_book/screens/view_book/view_book.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class BookCategory extends StatefulWidget {
  const BookCategory({super.key});

  @override
  State<BookCategory> createState() => _BookCategoryState();
}

class _BookCategoryState extends State<BookCategory> {
  final List<Map<String, dynamic>> categoryList = [
    {
      "title": "Atomic Habits",
      "author": "James Clear",
      "images": "$kAssetCategoryPath/category1.png",
      "views": "+1k",
    },
    {
      "title": "The Psychology of Money",
      "author": "Morgan Housel",
      "images": "$kAssetCategoryPath/category2.png",
      "views": "+1M",
    },
    {
      "title": "How to Train your Mind",
      "author": "Chirs Bailey",
      "images": "$kAssetCategoryPath/category3.png",
      "views": "+13k",
    },
    {
      "title": "The Courage to be Disliked",
      "author": "Ichiro Kishimi and Fumitake Koga",
      "images": "$kAssetCategoryPath/category4.png",
      "views": "+22.6k",
    },
    {
      "title": "Ikigai",
      "author": "Hector Garcia",
      "images": "$kAssetCategoryPath/category5.png",
      "views": "+3.6k",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Elementary",
          style: TextStyle(color: Colors.white, fontSize: kAppBarSize),
        ),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
            mainAxisExtent: 370,
          ),
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: categoryList.length,
          itemBuilder: (_, i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (e) => const ViewBook()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color.fromARGB(255, 3, 7, 53),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "${categoryList.elementAt(i)["images"]}",
                        height: 230,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  "${categoryList.elementAt(i)["title"]}"
                                      .toUpperCase(),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.bookmark_outline,
                                color: Colors.white,
                              )
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            "${categoryList.elementAt(i)["author"]}",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Views: ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                "${categoryList.elementAt(i)["views"]}",
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
