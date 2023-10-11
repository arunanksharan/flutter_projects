import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({key, required this.colors}) : super(key: key);
  // same as GradientContainer({super.key})
  final List<Color> colors;

  @override
  Widget build(context) {
    return const Text('In Gradient Container');
  }
}
