// This is a stateless widget because it doesn't need to manage any internal state

import 'package:flutter/material.dart';
import 'package:starting_screen/data/questions.dart';
import 'package:starting_screen/questions_summary.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData(){
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
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data){ //where gives a new list of elements that filtered
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!'),
            const SizedBox(height: 30,),
            // QuestionsSummary(getSummaryData()), // this stops using the same function twice inside the same build method
            QuestionsSummary(summaryData),
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