import 'package:flutter/material.dart ';
import 'package:starting_screen/answer_button.dart';
import 'package:starting_screen/data/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build(context){
    final currentQuestion = questions[0];

    return SizedBox( // another approach as Center widget
      width: double.infinity, // take the full width of the screen
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
          currentQuestion.text, 
          style: const TextStyle(
            color: Colors.white
          ),
        ),
        const SizedBox(height: 20,),

        ...currentQuestion.answers.map((answer){ 
          // map is used to convert list of answers to list of widgets
          // ... is the spread operator
          return AnswerButton(answerText: answer, onTap: (){});
        }),

        /* following we added the arguments to named argumets
        for named argumets order is not important, 
        just immportant that we have set all required argumets
        ane need to target argumets with their name */
        AnswerButton(
          onTap: (){}, 
          answerText: currentQuestion.answers[0],
        ),
        AnswerButton(
          onTap: (){}, 
          answerText: currentQuestion.answers[1],
        ),
        AnswerButton(
          onTap: (){}, 
          answerText: currentQuestion.answers[2],
        ),
        AnswerButton(
          onTap: (){}, 
          answerText: currentQuestion.answers[3],
        ), 
      ],),
    );
  }
}