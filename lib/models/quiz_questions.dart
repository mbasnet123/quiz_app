import 'package:flutter/material.dart';

class QuizQuestion {
  QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

List<QuizQuestion> questionsList = [
  QuizQuestion("Which is the biggest country?", [
    "Russia",
    "China",
    "India",
    "Canada"
  ],),

  QuizQuestion("Which is the largest continent?", [
    "Asia",
    "Africa",
    "North America",
    "Europe"
  ]),

  QuizQuestion("Which ocean is the largest?", [
    "Pacific Ocean",
    "Atlantic Ocean",
    "Indian Ocean",
    "Southern Ocean"
  ]),

  QuizQuestion("Which country is known as 'The Land Down Under'?", [
    "Australia",
    "Brazil",
    "Egypt",
    "Japan"
  ]),

  QuizQuestion("Which city is the capital of France?", [
    "Paris",
    "Rome",
    "London",
    "Berlin"
  ]),

  QuizQuestion("Which mountain is the highest in the world?", [
    "Mount Everest",
    "K2",
    "Makalu",
    "Kangchenjunga"
  ]),

  QuizQuestion("Which river is the longest in the world?", [
    "Nile",
    "Amazon",
    "Yangtze",
    "Mississippi"
  ]),

  QuizQuestion("Which is the largest island in the world?", [
    "Greenland",
    "Australia",
    "Borneo",
    "Madagascar"
  ]),

  QuizQuestion("Which country is known as the 'Land of Fire and Ice'?", [
    "Iceland",
    "New Zealand",
    "Norway",
    "Indonesia"
  ]),

  QuizQuestion("Which lake is the deepest in the world?", [
    "Lake Baikal",
    "Lake Superior",
    "Lake Tanganyika",
    "Caspian Sea"
  ]),

  QuizQuestion("Which country is the largest producer of coffee?", [
    "Brazil",
    "Colombia",
    "Vietnam",
    "Ethiopia"
  ]),

  QuizQuestion("Which river flows through the Grand Canyon?", [
    "Colorado River",
    "Mississippi River",
    "Amazon River",
    "Nile River"
  ]),

  QuizQuestion("Which city is the capital of Australia?", [
    "Canberra",
    "Sydney",
    "Melbourne",
    "Brisbane"
  ]),
];

