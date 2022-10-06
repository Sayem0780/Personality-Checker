import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
class Quiz extends StatelessWidget{
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final void Function(int)? answerQuestion;
  Quiz({required this.questions,@required this.answerQuestion,required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Question(questions[questionIndex]['questionText'] as String),
            ...(questions[questionIndex]['answerText'] as List<Map<String,dynamic>>).map((answerText){
              return Answer(()=> answerQuestion!(answerText['score']),answerText['text'] as String);
            }).toList(),
          ]
          ,));
  }
}
