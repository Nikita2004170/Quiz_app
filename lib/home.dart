import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 185, 132, 76),
          Color.fromARGB(31, 175, 113, 113)
        ]),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "images/quiztp.png",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/quiz');
                },
                icon: const Icon(Icons.arrow_circle_right),
                label: const Text("Start Quiz"))
          ],
        ),
      ),
    );
  }
}
