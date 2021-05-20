import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answers(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple[700],
          onPrimary: Colors.white,
          shadowColor: Colors.orange[100],
          elevation: 10,
        ),
      
        child: Text(answerText,
        style: TextStyle(fontFamily: 'Times',fontSize: 16),),
        onPressed: selectHandler,
      ),
    );
  }
}
