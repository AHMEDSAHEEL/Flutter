import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.7,
              child: Image.asset(
                "assets/images/quizlogo.jpg",
                width: 300,
              ),
            ),
            SizedBox(
              height: 40,
            ),
             Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.nunito(color: Colors.white, fontSize: 24),
            ),
            SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: startQuiz,
              icon: Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
