import 'package:flutter/material.dart';

class gradient extends StatelessWidget {
  const gradient(this.child, {super.key});
  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 185, 132, 76),
          Color.fromARGB(31, 175, 113, 113)
        ]),
      ),
      child: child,
    );
  }
}
