import 'package:flutter/material.dart';
import 'package:second_quiz/homepage.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({key, required this.colors}) : super(key: key);
  // same as GradientContainer({super.key})
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: HomePage(),
      ),
    );
  }
}
