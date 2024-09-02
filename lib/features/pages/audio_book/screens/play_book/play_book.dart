import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class PlayBook extends StatelessWidget {
  const PlayBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chapter 1",
          style: TextStyle(fontSize: kAppBarSize, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarHeight: 60,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (e) => const CustomBottomDraggable(
                  //                 child: Text(
                  //               "Hello",
                  //               style: TextStyle(color: Colors.white),
                  //             ))));
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      useSafeArea: true,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          height: 130,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 2, 23, 92),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(22),
                                  topRight: Radius.circular(22))),
                          child: const Center(
                              child: Column(
                            children: [
                              Text(
                                "--------",
                                style: TextStyle(color: Colors.white),
                              ),
                               SizedBox(height: 10),
                              Text(
                                "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                        );
                      });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.check_mark,
                              color: Colors.white,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "ADDED TO BOOKMARK",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: const Icon(Icons.bookmark_outline)),
          ),
        ],
      ),
      body: Stack(
        children: [
          const Positioned(
            top: 10,
            bottom: 0,
            left: 15,
            right: 15,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "For some of us, books are as important as almost anything else on earth. What a miracle it is that out of these small, flat, rigid squares of papers unfolds world after world , worlds that sing to you comfort and quiet or excite you.",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              height: 70,
              width: 415,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: kBackgroundColor.withOpacity(0.6)),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 2, 23, 92),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.play_arrow,
                      size: 30,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SliderTheme(
                            data: Theme.of(context).sliderTheme.copyWith(
                                  trackHeight: 4,
                                  activeTrackColor:
                                      const Color.fromARGB(255, 141, 94, 6),
                                  inactiveTrackColor: Colors.white,
                                  thumbColor: const Color(0xffF56F65),
                                  thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 6.5,
                                      disabledThumbRadius: 10),
                                  overlayShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 7.5,
                                      disabledThumbRadius: 10),
                                ),
                            child: SizedBox(
                              width: 280,
                              child: Slider(
                                value: 0.057,
                                onChanged: (newSliderValue) {},
                              ),
                            )),
                        const SizedBox(height: 3),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "00:57",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            SizedBox(width: 200),
                            Text(
                              "23:57",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomBottomDraggable extends StatefulWidget {
  final Widget child;
  const CustomBottomDraggable({super.key, required this.child});

  @override
  State<CustomBottomDraggable> createState() => _CustomBottomDraggableState();
}

class _CustomBottomDraggableState extends State<CustomBottomDraggable> {
  final sheet = GlobalKey();
  final controller = DraggableScrollableController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraints) {
      return DraggableScrollableSheet(
          key: sheet,
          initialChildSize: 0.5,
          maxChildSize: 0.95,
          minChildSize: 0.0,
          expand: true,
          snap: true,
          snapSizes: [
            60 / constraints.maxHeight,
            0.5,
          ],
          builder: (BuildContext context, ScrollController scrollController) {
            return DecoratedBox(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 2, 23, 92),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverToBoxAdapter(
                    child: widget.child,
                  )
                ],
              ),
            );
          });
    });
  }
}
