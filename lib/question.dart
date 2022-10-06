import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(questionText,style: TextStyle(color: Colors.black54,fontSize: 35,fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,),
    );
  }
}
