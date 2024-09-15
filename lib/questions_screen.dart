import 'package:flutter/material.dart ';

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
        const Text('The question....'),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: (){}, 
          child: const Text('Answer 1'),
        ),
         ElevatedButton(
          onPressed: (){}, 
          child: const Text('Answer 2'),
        ),
         ElevatedButton(
          onPressed: (){}, 
          child: const Text('Answer 3'),
        ),
         ElevatedButton(
          onPressed: (){
            print('Answer 4');
          }, 
          child: const Text('Answer 4'),
        )
      ],),
    );
  }
}