import 'package:flutter/material.dart';
import 'package:new_quiz/designans.dart';
import 'package:new_quiz/model/questionans.dart';
import 'package:new_quiz/model/result.dart';

class quizscreen extends StatefulWidget {
  const quizscreen({super.key});

  @override
  State<quizscreen> createState() => _quizscreenState();
}

class _quizscreenState extends State<quizscreen> {
  int quesindex = 0;
  int score = 0;
  List<String> selectedAnswers = [];
  void ansfn(String selectedAnswer) {
    setState(() {
      selectedAnswers.add(selectedAnswer);
      quesindex++; // Increment the question index
    });

    if (quesindex >= quizquestions.length) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => result(
            selectedAnswers: selectedAnswers, // Provide the actual list
            score: score, // Provide the score
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = quizquestions[quesindex];

    return Scaffold(
      body: Container(
        // margin: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 185, 132, 76),
            Color.fromARGB(31, 175, 113, 113)
          ]),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentquestion.text,
                  style: const TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                ///change  string to widget
                ...currentquestion.shufflelist().map((item) {
                  return AnsButton(
                    item,
                    () => ansfn(item),
                  );
                }),
                //SizedBox(height: 30),
                // AnsButton("", () {}),
                // AnsButton("", () {}),
                // AnsButton("", () {}),
                // AnsButton("", () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
