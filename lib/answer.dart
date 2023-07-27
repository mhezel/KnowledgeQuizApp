import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});
  final selectHandler;
  final String? answerText; //make answerText nullable

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // alignment: Alignment.centerLeft,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: selectHandler,
        child: Text(
          answerText ?? '', // if answerText is null then pass empty string
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
