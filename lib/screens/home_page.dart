import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.purple.shade300, Colors.purple.shade700],
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Opacity(
                opacity: 0.5,
                child: Image.asset(
                  "assets/images/quiz.jpg",
                  // color: Color.fromARGB(42, 255, 255, 255),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Learn geography the easy way",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton.icon(
                onPressed: () {
                  startQuiz();
                },
                icon: const Icon(Icons.start),
                label: const Text("Run Quiz"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
