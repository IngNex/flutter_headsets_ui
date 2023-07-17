import 'package:flutter/material.dart';
import 'package:flutter_headsets_ui/ui/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI HeadSets',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
