import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultText = 'You did it';
  // const Result({super.key});

  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    // getters
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable";
    } else if (resultScore <= 16) {
      resultText = "You are Strange";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //vertically centering the contents
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
