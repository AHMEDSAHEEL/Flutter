import 'package:flutter/material.dart';

class ResultSummary extends StatelessWidget {
  const ResultSummary(this.summaryData, {super.key});

  final List<Map<String, dynamic>> summaryData;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: summaryData.map(
            (data) {
              final questionIndex =
                  ((data['question-index'] as int) + 1).toString();
              final question = data['question'] as String;
              final userAnswer = data['user-answer'] as String;
              final correctAnswer = data['correct-answer'] as String;

              return resultContainer(userAnswer, correctAnswer, questionIndex, question);
            },
          ).toList(),
        ),
      ),
    );
  }

  Container resultContainer(String userAnswer, String correctAnswer, String questionIndex, String question) {
    return Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color:userAnswer==correctAnswer ?Colors.green:Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 13, 1, 34),
                      radius: 30,
                      child: Text(questionIndex,
                          style:
                              TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          question,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 13, 1, 34),
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                         'Your Answer: $userAnswer',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Correct Answer: $correctAnswer',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
  }
}
