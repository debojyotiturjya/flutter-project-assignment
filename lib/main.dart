import 'package:class_project_001/calculator_page.dart';
import 'package:class_project_001/gridview.dart';
import 'package:class_project_001/listview.dart';
import 'package:class_project_001/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme : ThemeData. dark(),
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      //home: CalculatorPage(),
      //home: listviewpage(),
      home: girdviewpage(),
    );
  }
}
