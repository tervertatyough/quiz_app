import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 61, 6, 70),
          Color.fromARGB(255, 119, 10, 138),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 350,
              color: const Color.fromARGB(146, 255, 255, 255),
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              "Learn Flutter the fun way!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 222, 255),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              label: const Text("Start Quiz"),
              icon: const Icon(Icons.arrow_right_alt),
            )
          ],
        ),
      ),
    );
  }
}
