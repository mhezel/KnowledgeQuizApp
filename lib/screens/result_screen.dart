import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color(0xFF252c4a);
    return Scaffold(
      backgroundColor: mainColor,
      body: quizResult(context),
    );
  }

  Center quizResult(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Congratulations",
            style: TextStyle(
              color: Colors.white,
              fontSize: 38.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Your score is :",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 50.0),
          Text(
            "${widget.score}",
            style: const TextStyle(
                color: Colors.orange,
                fontSize: 80.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 60.0,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            elevation: 0.0,
            color: Colors.orange,
            textColor: Colors.white,
            child: const Text("Repeat the Quiz"),
          ),
        ],
      ),
    );
  }
}
