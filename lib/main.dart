import 'package:flutter/material.dart';
import 'package:zeba_academy_education_app/shared/themes.dart';
import 'features/authentication_screens/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zeba Academy',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}



