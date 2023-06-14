import 'package:basics_two/screens/home_page.dart';
import 'package:basics_two/screens/question_screen.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // Widget? activeScreen;
  var activeScreen = 'start_screen';


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

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePage(switchScreen);

    if(activeScreen == 'questions_screen'){
      screenWidget = QuestionPage();
    }

    // return activeScreen!;
    // return activeScreen == 'start_screen'
    //     ? HomePage(switchScreen)
    //     : QuestionPage();
    return screenWidget;
  }
}
