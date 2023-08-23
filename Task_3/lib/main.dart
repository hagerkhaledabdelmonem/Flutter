import 'package:flutter/material.dart';
import 'Splash_Screen.dart';
import 'Home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyNavigationBar());
  }
}

