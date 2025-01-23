import 'package:flutter/material.dart';
import 'package:quizapp/data/answers.dart';
import 'package:quizapp/QuizApp/quiz_question.dart';
import 'package:quizapp/resultPages/result_screen.dart';
import 'package:quizapp/QuizApp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 0;
  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = 0;
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 1;
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 1;
    });
  }

  void chooseAnswer(String value) {
    selectedAnswers.add(value);

    if (answers.length == selectedAnswers.length) {
      setState(() {
        activeScreen = 2;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidget = activeScreen == 0
        ? StartScreen(switchScreen)
        : activeScreen == 1
            ? QuestionScreen(onSelectedAnswer: chooseAnswer)
            : ResultScreen(
                choosenAnswer: selectedAnswers,
                restartQuiz: restartQuiz,
              );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}
