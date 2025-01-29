import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_quiz/classquestion%20.dart';
import 'package:new_quiz/model/questionans.dart';
import 'package:new_quiz/question_summary.dart';

class result extends StatefulWidget {
  result({super.key, required this.selectedAnswers, required this.score});
  final List<String> selectedAnswers;
  int score = 0;
  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  late int tques;
  late int cques;
  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    tques = quizquestions.length; // Total number of questions
    cques = 0; // Counter for correct answers

    for (int i = 0; i < widget.selectedAnswers.length; i++) {
      final selectedAnswer = widget.selectedAnswers[i];
      final correctAnswer = quizquestions[i].ans.isNotEmpty
          ? quizquestions[i].ans[0]
          : ''; // Ensure there's an answer
      summary.add({
        'questionIndex': i + 1,
        'question': quizquestions[i].text ??
            'No question text', // Provide a default if text is null
        'selectedAnswer': selectedAnswer, // User's answer
        'correctAnswer': correctAnswer,
      });

      if (selectedAnswer == correctAnswer) {
        cques++;
      }
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    getSummary();
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
                "You answered $cques out of $tques questions correctly",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              Quessum(getSummary()),

              // Text('Score: score'),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: const Icon(Icons.restart_alt_sharp),
                  label: const Text("Restart quiz"))
            ],
          ),
        ),
      ),
    ));
  }
}
