import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  var quesIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      quesIndex = 0;
      totalScore = 0;
    });
  }

  void AnswerQues(int score) {
    totalScore += score;

    setState(() {
      quesIndex = quesIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText':
            "Who did Captain America give his shield to in Endgame?",
        'answer': [
          {'text': 'Winter Soldier', 'score': 0},
          {'text': 'Thor', 'score': 0},
          {'text': 'Sam', 'score': 10},
          {'text': 'Scarlett Witch', 'score': 0}
        ],
      },
      {
        'questionText':
            " In which movie did Spider-Man makes his first appearance in the MCU?",
        'answer': [
          {'text': 'Captain America: Civil War', 'score': 10},
          {'text': 'Spider Man:Homecoming', 'score': 0},
          {'text': 'The Avengers', 'score': 0},
          {'text': 'Avengers:Infinity War', 'score': 0}
        ],
      },
      {
        'questionText': "Who rescued Tony Stark and Nebula from space?",
        'answer': [
          {'text': 'Captain Marvel', 'score': 10},
          {'text': 'Thor', 'score': 0},
          {'text': 'Starlord', 'score': 0},
          {'text': 'Loki', 'score': 0}
        ],
      },
      {
        'questionText': "Pym Particles were created by who?",
        'answer': [
          {'text': 'Hope Pym', 'score': 0},
          {'text': 'Hank Pym', 'score': 10},
          {'text': 'Scott Lang', 'score': 0},
          {'text': 'Howard Starc', 'score': 0}
        ],
      },
      {
        'questionText': " Who is the firstborn child of Odin?",
        'answer': [
          {'text': 'Loki', 'score': 0},
          {'text': 'Hela', 'score': 10},
          {'text': 'Thor', 'score': 0},
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[900],
        appBar: AppBar(
          title: Text(
            'Marvel\'s Quiz',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              fontFamily: 'Sans-Serif',
            ),
           
          ),
          centerTitle: true,
          backgroundColor: Colors.purple[900],
          
          
        ),
        body: Container(
          padding: EdgeInsets.all(25),
          child: quesIndex < questions.length
              ? Quiz(
                  AnswerQues: AnswerQues,
                  quesIndex: quesIndex,
                  questions: questions)
              : Result(totalScore, resetQuiz),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
