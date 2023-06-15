import 'package:basics_two/models/quiz_questions.dart';
import 'package:flutter/material.dart';
import 'package:basics_two/widgets/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData(){
     final List<Map<String, Object>> summary = [];

     for(var i = 0; i < chosenAnswers.length; i++){
       summary.add({
         "question_index":i,
         "question":questionsList[i].text,
         "correct_answer":questionsList[i].answers[0],
         "user_answer": chosenAnswers[i]
       });
     }
     return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questionsList.length;
    final numCorrectQuestions = summaryData.where((data){
      return data["user_answer"] == data["correct_answer"];
    }).length;

    return Scaffold(
      backgroundColor: Colors.purple,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$numCorrectQuestions out of $numTotalQuestions answers answered correctly",
            style: TextStyle(fontSize: 20),),
            const SizedBox(
              height: 20,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
