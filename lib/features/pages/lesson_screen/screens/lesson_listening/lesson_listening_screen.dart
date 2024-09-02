import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';

class LessonListening extends StatefulWidget {
  const LessonListening({super.key});

  @override
  State<LessonListening> createState() => _LessonListeningState();
}

class _LessonListeningState extends State<LessonListening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.bookmark_outline),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "$kAssetLessonPath/lesson_listening.png",
            fit: BoxFit.cover,
          ),
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.0),
                ],
                stops: const [
                  0.0,
                  0.4,
                  0.6,
                ],
              ).createShader(rect);
            },
            blendMode: BlendMode.dstOut,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [kButtonColor.withOpacity(0.9), kBackgroundColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            top: 130,
            right: 0.0,
            left: 300.0,
            child: InkWell(
              onTap: () {
                // ignore: void_checks
                return showSnackBar(context);
              },
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                margin: const EdgeInsets.only(right: 35, left: 25),
                decoration: BoxDecoration(
                  color: kButtonColor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "$kAssetLessonPath/google_translate.png",
                  height: 20,
                  width: 20,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Listening #1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 80),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.replay_5,
                      color: Colors.white,
                      size: 55,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 70,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.forward_5,
                      color: Colors.white,
                      size: 55,
                    ),
                  ],
                ),
                const SizedBox(height: 90),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SliderTheme(
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "00:57",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.75),
                      const Text(
                        "23:57",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
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
                onTap: () {},
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
  showSnackBar(context) {
  SnackBar snackBar = SnackBar(
    content: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.done_rounded,
          color: Colors.white,
        ),
        SizedBox(width: 4),
         Text(
          "Language Changed",
          style: TextStyle(color: Colors.white, fontSize: kBodySize),
        ),
      ],
    ),
    backgroundColor: Colors.green.shade900,
    dismissDirection: DismissDirection.up,
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.height - 120,
      left: 10,
      right: 10,
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
}


