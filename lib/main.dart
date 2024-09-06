import 'package:flutter/material.dart';
import 'package:starting_screen/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 204, 69, 245),
            Color.fromARGB(255, 136, 16, 86)
          ], begin: Alignment.topCenter, end: Alignment.bottomLeft)),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
