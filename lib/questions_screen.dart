import 'package:flutter/material.dart ';
import 'package:google_fonts/google_fonts.dart';
import 'package:starting_screen/answer_button.dart';
import 'package:starting_screen/data/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({required this.onSelectAnswer,super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers){
    widget.onSelectAnswer(selectedAnswers);
    // currentQuestionIndex = currentQuestionIndex = 1;
    // currentQuestionIndex += 1;
    setState(() { // this will trigger the build method to be called again
          currentQuestionIndex++; // increment the value by 1
    });
  }

  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox( // another approach as Center widget
      width: double.infinity, // take the full width of the screen
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
            currentQuestion.text, 
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 236, 170, 241),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20,),
        
            // map is used to convert list of answers to list of widgets
            // ... is the spread operator
          ...currentQuestion.getShuffledAnswers().map((answer){  // answer buttons added to the list as individual elements 
            return AnswerButton(
              answerText: answer, 
              // onTap: (answerQuestion),
              onTap: (){
                answerQuestion(answer);
              },
              );
          }),
        
          /* following we added the arguments to named argumets
          for named argumets order is not important, 
          just immportant that we have set all required argumets
          ane need to target argumets with their name */
          /*AnswerButton(
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
          ), */
        ],),
      ),
    );
  }
}