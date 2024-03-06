import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key});

  @override
  State<AnimatedDefaultTextStyleWidget> createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState
    extends State<AnimatedDefaultTextStyleWidget> {
  double fontSize = 20;
  Color fontColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          fontSize == 20 ? fontSize = 30 : fontSize = 20;
          fontColor == Colors.black
              ? fontColor = Colors.deepPurple
              : fontColor = Colors.black;
        });
      },
      child: AnimatedDefaultTextStyle(
        style: TextStyle(color: fontColor, fontSize: fontSize),
        duration: const Duration(seconds: 1),
        child: const Text('Fahd Mekawy'),
      ),
    );
  }
}
