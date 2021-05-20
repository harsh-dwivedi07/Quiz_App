import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String,Object>> questions;
  final Function AnswerQues;
  final int quesIndex;

  Quiz({this.questions,this.AnswerQues,this.quesIndex});

  String heading="";
  @override
  Widget build(BuildContext context) {
    heading="Question "+(quesIndex+1).toString()+" of 5";
    return Column(
          children: [
            Text(heading,
            style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          
        ),
        ),
        SizedBox(height: 15),
            Question(questions[quesIndex]['questionText']),
            SizedBox(height: 30),
            ...(questions[quesIndex]['answer'] as List<Map<String,Object>>).map((answer) {
              return Answers(() => AnswerQues(answer['score']), answer['text']);
            }).toList()
          ],
        );
  }
}