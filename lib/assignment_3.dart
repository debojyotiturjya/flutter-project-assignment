import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 5, color: Colors.blue),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: const RadialGradient(
            colors: [Colors.purpleAccent, Colors.purple],
          ),
        ),
        child: const Text(
          "Hello Container",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
