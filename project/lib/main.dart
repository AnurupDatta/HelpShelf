import 'package:flutter/material.dart';
import 'package:project/intropage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Item Details App',
      home: IntroPage(),
    );
  }
}
