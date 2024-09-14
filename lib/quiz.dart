import "package:flutter/material.dart";
import 'package:starting_screen/questions_screen.dart';
import 'package:starting_screen/start_screen.dart';
import 'package:starting_screen/questions_screen.dart';

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
  
 // Widget activeScreen = const StartScreen(switchScreen);
  //activeScreen is a variable that holds the StartScreen widget
  // (switchScreen) passess a pointer as a value to StartScreen
  // we can't use var as the type because we need more general type. because we assign a new widget to it later

  Widget? activeScreen; // we can use "?" to make it nullable (means can contain widget or null)

  @override //for additional initialization
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState(); //call the parent class's initState method
  }

  void switchScreen(){
    setState((){
      activeScreen = const QuestionsScreen();
    });
  }

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
          child: activeScreen,
        ),
      ),
    );
  }
}