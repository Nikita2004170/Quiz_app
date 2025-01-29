import 'package:flutter/material.dart';

class AnsButton extends StatelessWidget {
  const AnsButton(this.s, this.ontap, {super.key});
  final String s;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: ElevatedButton(
        onPressed: () =>
            ontap(), // Displays the string passed as 's' for button text
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(
              255, 164, 168, 93), // Button background color
          foregroundColor: Colors.white, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 70,
            vertical: 15,
          ), // Adjust padding inside button
        ), // Executes the ontap function when button is pressed
        child: Text(
          s,
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
