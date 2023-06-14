import 'package:basics_two/models/quiz_questions.dart';
import 'package:basics_two/widgets/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:basics_two/models/quiz_questions.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final currentQuestion = questionsList[0];

  @override
  Widget build(BuildContext context) {
    // final currentQuestion = QuizQuestion[0];
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentQuestion.text),
            const SizedBox(
              height: 30,
            ),
            AnswerButton(
              answer: currentQuestion.answers[0],
              onPress: () {},
            ),
            AnswerButton(
              answer: currentQuestion.answers[1],
              onPress: () {},
            ),
            AnswerButton(
              answer: currentQuestion.answers[2],
              onPress: () {},
            ),
            AnswerButton(
              answer: currentQuestion.answers[3],
              onPress: () {},
            ),
            // AnswerButton(
            //   answer: currentQuestion.answers[4],
            //   onPress: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
