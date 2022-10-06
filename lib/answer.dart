import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final void Function()? Handler;
  String answerText;
  Answer(this.Handler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText,
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white60),),
        onPressed: Handler,
      ),
    );
  }
}
