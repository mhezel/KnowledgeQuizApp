import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({super.key});

  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //vertically centering the contents
        children: [
          // Text(questions.elementAt(0)),
          Question(questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['answers'] //spread operator
                  as List<Map<String, Object>>)
              .map((answer) {
            return Answer(() => answerQuestion((answer['score'])),
                answer['text'] as String?);
          }).toList()
        ],
      ),
    );
  }
}
