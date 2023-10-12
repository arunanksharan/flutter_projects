import 'package:flutter/material.dart';
import 'package:second_quiz/start_screen.dart';
import 'package:second_quiz/questions_screen.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({key}) : super(key: key);

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(
  //     switchScreen,
  //   );
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color.fromARGB(255, 90, 30, 80),
                Color.fromARGB(255, 45, 7, 98),
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
