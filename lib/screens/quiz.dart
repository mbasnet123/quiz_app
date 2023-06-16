import 'package:basics_two/screens/home_page.dart';
import 'package:basics_two/screens/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:basics_two/models/quiz_questions.dart';
import 'package:basics_two/screens/result_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({
    super.key,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // Widget? activeScreen;
  var activeScreen = 'start_screen';
  List<String> selectedAnswers = [];

  // @override
  // void initState() {
  //   // TODO: implement initState
  //    activeScreen = HomePage(switchScreen);
  //    super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionPage();
      activeScreen = 'questions_screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questionsList.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results_screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'questions_screen') {
      screenWidget = QuestionPage(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == "results_screen") {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    // return activeScreen!;
    // return activeScreen == 'start_screen'
    //     ? HomePage(switchScreen)
    //     : QuestionPage();
    return screenWidget;
  }
}
