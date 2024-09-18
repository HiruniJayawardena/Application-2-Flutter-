import 'package:flutter/material.dart';
// import 'package:starting_screen/results_screen.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView( // make the column child scrollable
        child: Column(
          children: summaryData.map((data){
            return Row(
              children: [
                CircleAvatar(
                  // summaryData.where(data){
                  //   return data['user_answer'] == data['correct_answer'];
                  // },
                  // if(data['user_answer'] == data['correct_answer']){
                  //   backgroundColor: Colors.red,
                  // }else{
                  //   backgroundColor: Colors.green,
                  // },
                  // backgroundColor: Colors.brown.shade800,
                  child: Text(((data['question_index'] as int) + 1).toString()),
                ),
                Expanded( // child widget takes all the space it can take
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(height: 5,),
                      Text(data['user_answer'] as String),
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}