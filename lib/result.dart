import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final void Function()? resultHandeler;
  Result(this.resultScore,this.resultHandeler);

  String get resultPhrase{
    var resultText;
    if (resultScore>1){
      resultText = 'You Have Passed';
    }else{
      resultText = 'You have failed! Practice';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text(resultPhrase,style: TextStyle(color: Colors.red,fontSize: 35,fontWeight: FontWeight.bold),),
        ),
        RaisedButton(
          child: Text('Try Again'),
            onPressed: resultHandeler)
      ],
    );
  }
}
