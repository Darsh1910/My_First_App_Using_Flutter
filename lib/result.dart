// onpressed needs a address function

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,
      this.resetHandler); //Construtor_name(positional_argument);

  //getters
  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = "You are awesome and innocent!!";
    } else if (resultScore <= 14) {
      resultText = "You are pretty Likeable";
    } else if (resultScore <= 16) {
      resultText = "Negative Guy";
    } else {
      resultText = "Stay away from me!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text(
            'Restart Quiz!',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          textColor: Colors.blueAccent,
        )
      ],
    ));
  }
}
