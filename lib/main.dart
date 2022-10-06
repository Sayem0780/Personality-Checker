import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;
  void answerQuestion(int score){
    setState(() {
      questionIndex= questionIndex + 1;
      totalScore = totalScore + score;
    });
  }

  void replay(){
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
}
  var questions =[{
    'questionText': 'How many Rukun\'s are in Islam?',
    'answerText': [
      {'text': 'One', 'score':'0'},
      {'text': 'Two', 'score':'0'},
      {'text': 'Three', 'score':'0'},
      {'text': 'Four', 'score':'0'},
      {'text': 'Five', 'score':'1'},]},
    {
    'questionText': 'Who is our Prophet?',
    'answerText': [
      {'text': 'Muhammad(PUBH)', 'score':'1'},
      {'text': 'NuH(PUBH)', 'score':'0'},
      {'text': 'Musa(PUBH)', 'score':'0'},
      {'text': 'Jakaria(PUBH)', 'score':'0'},
      {'text': 'Younus(PUBH)', 'score':'0'},
    ]},
    {
      'questionText': 'Who is our Leader?',
      'answerText': [
        {'text': 'Muhammad(PUBH)', 'score':'1'},
        {'text': 'NuH(PUBH)', 'score':'0'},
        {'text': 'Musa(PUBH)', 'score':'0'},
        {'text': 'Jakaria(PUBH)', 'score':'0'},
        {'text': 'Younus(PUBH)', 'score':'0'},
      ]}];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body:questionIndex<questions.length?
        Quiz(questions: questions,
            answerQuestion: answerQuestion,
            questionIndex: questionIndex): Result(totalScore,replay),
      ),
    );
  }
}
