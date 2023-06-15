import 'package:basics_two/models/quiz_questions.dart';
import 'package:basics_two/screens/quiz.dart';
import 'package:basics_two/widgets/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:basics_two/models/quiz_questions.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/questions.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    // currentQuestionIndex = currentQuestionIndex +1;
    // currentQuestionIndex+=1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final currentQuestion = QuizQuestion[0];
    final currentQuestion = questionsList[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return QuizPage();
            }));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Colors.purple,
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                   color: Colors.white,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ...currentQuestion.getShuffledAnswers().map((ans) {
                return AnswerButton(
                  answer: ans,
                  onPress: (){
                    answerQuestion(ans);
                  },
                );
              }),
              // AnswerButton(
              //   answer: currentQuestion.answers[0],
              //   onPress: () {},
              // ),
              // AnswerButton(
              //   answer: currentQuestion.answers[1],
              //   onPress: () {},
              // ),
              // AnswerButton(
              //   answer: currentQuestion.answers[2],
              //   onPress: () {},
              // ),
              // AnswerButton(
              //   answer: currentQuestion.answers[3],
              //   onPress: () {},
              // ),
              // AnswerButton(
              //   answer: currentQuestion.answers[4],
              //   onPress: () {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
