import "package:flutter/material.dart";
import 'package:starting_screen/questions_screen.dart';
import 'package:starting_screen/start_screen.dart';
import 'package:starting_screen/data/questions.dart';
import 'package:starting_screen/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  // CreateState creates an instance of a class that based on state connected to quiz
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = []; // store the selected answers

  /* private class start with "_" and with class name and "State"
   State is a generic class that takes the StatefulWidget as a type argument */

  //-------------------------method -1----------------------------------------------
  // Widget activeScreen = const StartScreen(switchScreen);
  /* activeScreen is a variable that holds the StartScreen widget
    (switchScreen) passess a pointer as a value to StartScreen
     we can't use var as the type because we need more general type. because we assign a new widget to it later */

  // Widget?
  //     activeScreen; // we can use "?" to make it nullable (means can contain widget or null)

  // @override //for additional initialization
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState(); //call the parent class's initState method
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  //-------------------------method -1----------------------------------------------

  //------another method to use activeScreen(method-2)
  // This doesn't need init function
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  //--------------------------------------------------------------------------------

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'results-screen';
        // selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(context) {
    /* var screenWidget = activeScreen == 'start-screen'  //this is a turnery expression
                 ? StartScreen(switchScreen)
                 : const QuestionsScreen(); */
    
    // another way to write above code
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if(activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers,);
    }


    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 204, 69, 245),
            Color.fromARGB(255, 136, 16, 86)
          ], begin: Alignment.topCenter, end: Alignment.bottomLeft)),
          //-------------------------method -1----------------------------------------------
          // child: activeScreen,
          //-------------------------method -1----------------------------------------------

          //------another method to use activeScreen(method-2)
          child: screenWidget,
          //-------------------------method -2----------------------------------------------
        ),
      ),
    );
  }
}
