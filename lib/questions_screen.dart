import 'package:flutter/material.dart ';
import 'package:starting_screen/answer_button.dart';

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
    return SizedBox( // another approach as Center widget
      width: double.infinity, // take the full width of the screen
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text(
          'The question....', 
          style: TextStyle(
            color: Colors.white
          ),
        ),
        const SizedBox(height: 20,),

        /* following we added the arguments to named argumets
        for named argumets order is not important, 
        just immportant that we have set all required argumets
        ane need to target argumets with their name */
        AnswerButton(
          onTap: (){}, 
          answerText: 'Answer 1'
        ),
        AnswerButton(
          onTap: (){}, 
          answerText: 'Answer 2'
        ), 
      ],),
    );
  }
}