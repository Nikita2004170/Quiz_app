import 'package:flutter/material.dart';
import 'package:new_quiz/classquestion%20.dart';

class identifier extends StatelessWidget {
  const identifier(
      {super.key, required this.iscorrectans, required this.quesindex});
  final bool iscorrectans;
  final int quesindex;
  @override
  Widget build(BuildContext context) {
    final questionnumber = quesindex;
    return Container(
      width: 30, // Add a width
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: iscorrectans
            ? const Color.fromARGB(255, 74, 113, 181)
            : const Color.fromARGB(255, 157, 74, 80),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionnumber.toString(),
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white60),
      ),
    );
  }
}
