import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const routeName = 'start-screen';

  final Function onStart;
  const StartScreen(this.onStart, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'lib/assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              onStart();
              //Navigator.pushNamed(context, QuestionScreen.routeName);
            },
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
