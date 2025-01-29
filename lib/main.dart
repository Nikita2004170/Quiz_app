import 'package:flutter/material.dart';
import 'package:new_quiz/gradient.dart';
import 'package:new_quiz/home.dart';
import 'package:new_quiz/quiz.dart';

void main() {
  runApp(MaterialApp(
    home: const gradient(homescreen()),
    //homescreen(),

    routes: {
      '/home': (context) => const homescreen(),
      '/quiz': (context) => const quizscreen(),
      // '/res': (context) =>  result(),
    },
  ));
}
