import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback onRestart;
  const ResultScreen({super.key, required this.onRestart});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'You answered X out of Y questions correctly!',
              // style: GoogleFonts.lato(
              //   color: const Color.fromARGB(255, 201, 153, 251),
              //   fontSize: 24,
              //   fontWeight: FontWeight.bold,
              // ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'You answered X out of Y questions correctly!',
              // style: GoogleFonts.lato(
              //   color: const Color.fromARGB(255, 201, 153, 251),
              //   fontSize: 24,
              //   fontWeight: FontWeight.bold,
              // ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: onRestart,
              child: const Text(
                'Restart Quiz!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
