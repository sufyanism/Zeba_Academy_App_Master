import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zeba_academy_education_app/features/authentication_screens/screens/splash_screen/widgets/bottom_part.dart';
import 'package:zeba_academy_education_app/shared/constants.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with  TickerProviderStateMixin {
  late AnimationController _controller;
  bool copAnimated = false;
  bool animatedText = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addListener(() {
      if (_controller.value > 0.7){
        _controller.stop();
        copAnimated = true;
        setState(() {});
         Future.delayed(const Duration(milliseconds: 1300), () {
          animatedText = true;
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 1300),
            height: copAnimated ? size.height / 1.9 : size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(copAnimated ? 30.0 : 0.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Visibility(
                  visible: !copAnimated,
                  child: Lottie.asset("$kAssetImagePath/splash_screen.json",
                  controller: _controller,
                  onLoaded: (i){
                    _controller ..duration = i.duration ..forward();
                  }
                  ),
                ),
                Visibility(
                  visible: copAnimated,
                  child: Image.asset(
                    "$kAssetImagePath/za_logo.png",
                    height: 260,
                    width: 260,
                  ),
                ),
              ],
            ),
          ),
        Visibility(
          visible: copAnimated,
          child: AnimatedOpacity(
            opacity: animatedText ? 1 : 0,
            duration: const Duration(milliseconds: 1300),
            child: const BottomPart())),
        ],
      ),
    );
  }
}