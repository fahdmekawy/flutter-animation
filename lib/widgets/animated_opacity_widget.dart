import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double containerOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          containerOpacity == 1.0
              ? containerOpacity = 0.5
              : containerOpacity = 1.0;
        });
      },
      child: AnimatedOpacity(
        onEnd: () {
          debugPrint('End');
        },
        curve: Curves.easeInQuad,
        opacity: containerOpacity,
        duration: const Duration(milliseconds: 500),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.black,
        ),
      ),
    );
  }
}
