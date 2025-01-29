import 'package:flutter/material.dart';
import 'package:new_quiz/questionidentifier.dart';

class Quessum extends StatelessWidget {
  const Quessum(this.summary, {super.key});
  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(230, 154, 133, 109),
      ),
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children: summary.map((s) {
              final isCorrectAns = s['selectedAnswer'] == s['correctAnswer'];

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  identifier(
                    iscorrectans: isCorrectAns,
                    quesindex: s['questionIndex'] as int,
                  ),
                  const ColoredBox(color: Color.fromARGB(31, 175, 113, 113)),
                  //Text((s['questionIndex'] as int).toString()),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          s['question'] as String,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          s['selectedAnswer'] as String,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 132, 48, 147)),
                        ),
                        Text(
                          s['correctAnswer'] as String,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 55, 97, 169)),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
