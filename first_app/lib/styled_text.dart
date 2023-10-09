import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(String text, {key})
      : outputText = text,
        super(key: key);

  final String outputText;

  @override
  build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        fontSize: 40,
        color: Colors.white,
      ),
    );
  }
}
