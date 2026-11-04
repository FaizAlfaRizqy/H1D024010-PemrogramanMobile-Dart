import 'package:flutter/material.dart';
import 'package:belajarflutter2/login_page.dart';
import 'package:belajarflutter2/home_page.dart';
import 'package:belajarflutter2/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Menu",
      home: HomePage(),
    );
  }
}