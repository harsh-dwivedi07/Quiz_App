import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resethandler;

  Result(this.resultscore, this.resethandler);

  String get resultPhrase {
    String resultText = 'Your Score is' + ' ' + resultscore.toString();
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(

        child: Column(
         
          
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: resethandler,
            child: Text(
              'Restart Quiz',
              style:TextStyle(
                color: Colors.purpleAccent[700],
                fontSize: 20,
              ),
            ),
            style:TextButton.styleFrom()
            )
      ],
    ));
  }
}
