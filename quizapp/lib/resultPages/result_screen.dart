import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/data/answers.dart';
import 'package:quizapp/resultPages/result_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswer,required this.restartQuiz});

  final List<String> choosenAnswer;
  final void Function() restartQuiz;
  
  List<Map<String, dynamic>> getSummaryData() {
    final List<Map<String, dynamic>> summary = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question-index': i,
        'question': answers[i].question,
        'correct-answer': answers[i].choice[0],
        'user-answer': choosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final SummaryData = getSummaryData();
    final totalQuestion = answers.length;
    final noOfCorrectQues = SummaryData.where((data) {
      return data['user-answer'] == data['correct-answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answerd $noOfCorrectQues and of $totalQuestion questions correctly!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ResultSummary(SummaryData),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restartQuiz,
              icon: Icon(Icons.refresh),
              label: Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
