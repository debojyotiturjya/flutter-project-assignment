import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "Hello",
        style: TextStyle(
          fontSize: 50,
          color: const Color.fromARGB(255, 7, 150, 163),
        ),
      ),
    );
  }
}
