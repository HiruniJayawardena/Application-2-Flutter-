// This is a stateless widget because it doesn't need to manage any internal state

import 'package:flutter/material.dart';
import 'package:starting_screen/data/questions.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummeryData(){
    final List<Map<String, Object>> summery = [];

    for(var i = 0; i < chosenAnswers.length; i++){
      summery.add(
        {
          'question_index' : i,
          'question' : questions[i].text,
          'correct_answer' : questions[i].answers[0],
          'user_answer' : chosenAnswers[i],
        },
      );
    }

    return summery;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x out of y questions correctly!'),
            const SizedBox(height: 30,),
            const Text('List of answers and questions...'),
            const SizedBox(height: 30,),
            TextButton(
              onPressed:(){}, 
              child: const Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}