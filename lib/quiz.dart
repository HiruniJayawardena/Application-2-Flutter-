import "package:flutter/material.dart";
import 'package:starting_screen/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  // CreateState creates an instance of a class that based on state connected to quiz
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{ //private class start with "_" and with class name and "State"
  // State is a generic class that takes the StatefulWidget as a type argument
  
  @override
  Widget build(context){
    return MaterialApp(
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
    );
  }
}