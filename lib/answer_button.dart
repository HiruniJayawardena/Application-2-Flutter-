import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{ // we use StatelessWidget because we don't need to change the state of the button because it's clickable
  // AnswerButton(this.answerText, this.onTap, {super.key}); // this inclueds positional arguments

  /* following is the same as with named arguments 
  - in default dart named arguments are optional 
  so we add required key word to make them non optional */ 

  const AnswerButton({
    super.key, 
    required this.answerText, 
    required this.onTap, 
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 40, 
          vertical: 10
        ), // this allows to add horiozntal and vertical padding
        backgroundColor: const Color.fromARGB(255, 28, 1, 49),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
      ),  
      child: Text(answerText),
    );
  }
}