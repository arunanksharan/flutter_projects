import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.5,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Learn Flutter the Fun Way!',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 80),
        OutlinedButton.icon(
          onPressed: () {
            print('Pressed Start Quiz');
          },
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(16),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16),
          ),
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right_alt),
        )
      ],
    );
  }
}
