import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({key, required this.onTap, required this.answerText})
      : super(key: key);

  final void Function() onTap;
  final String answerText;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          textStyle: const TextStyle(fontSize: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(answerText));
  }
}
