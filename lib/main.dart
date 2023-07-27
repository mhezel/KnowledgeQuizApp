import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

// void main() {
//   runApp(MyFlutterApp());
// }

void main() => runApp(MyFlutterApp());

// class MyFlutterApp extends StatelessWidget {
class MyFlutterApp extends StatefulWidget {
  MyFlutterApp({super.key});

  @override
  State<MyFlutterApp> createState() => _MyFlutterAppState();
}

class _MyFlutterAppState extends State<MyFlutterApp> {
  final _questions = const [
    //values do not change during compiled and runtime
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'black', 'score': 8},
        {'text': 'red', 'score': 4},
        {'text': 'green', 'score': 6},
        {'text': 'white', 'score': 1},
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'rabbit', 'score': 7},
        {'text': 'snake', 'score': 4},
        {'text': 'elephant', 'score': 6},
        {'text': 'lion', 'score': 2},
      ],
    },
    {
      'questionText': 'What is your favorite sport?',
      'answers': [
        {'text': 'soccer', 'score': 1},
        {'text': 'basketball', 'score': 1},
        {'text': 'golf', 'score': 1},
        {'text': 'tennis', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // if (_questionIndex < questions.length) {

    _totalScore += score; //increment total score

    setState(() {
      //force flutter to re-render the state widget or interface
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test your Knowledge Quiz!'),
        ),
        // body: Text('This is my default text!'),
        body: _questionIndex < _questions.length //ternary condition
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
