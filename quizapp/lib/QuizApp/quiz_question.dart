import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/custom_buttons/elevated_button.dart';
import 'package:quizapp/data/answers.dart';
import 'package:quizapp/models/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.onSelectedAnswer, super.key});

  final void Function(String value) onSelectedAnswer;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuesIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    print(selectedAnswer);
    setState(() {
      currentQuesIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQues = answers[currentQuesIndex];
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(currentQues.question,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
              )),
          SizedBox(
            height: 20,
          ),
          ...currentQues.getShuffle().map((answer) => AnswerButton(
                ans: answer,
                onTap: () => answerQuestion(answer),
              ))
        ],
      ),
    );
  }
}
