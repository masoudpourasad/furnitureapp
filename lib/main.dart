import 'package:flutter/material.dart';
import 'package:furnitureapp/screens/main_screen.dart';
import 'package:furnitureapp/util/const.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: const MainScreen(),
    );
  }
}
