import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double containerWidth = 100.0;
  double containerHeight = 100.0;
  Color containerColors = Colors.red;
  double containerRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            containerWidth == 100 ? containerWidth = 100 : containerWidth = 200;
            containerHeight == 100
                ? containerHeight = 100
                : containerHeight = 200;
            containerColors == Colors.red
                ? containerColors = Colors.blue
                : containerColors = Colors.red;
            containerRadius == 0.0
                ? containerRadius = 100.0
                : containerRadius = 0.0;
          });
        },
        child: AnimatedContainer(
          curve: Curves.easeInExpo,
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
              color: containerColors,
              borderRadius: BorderRadius.circular(containerRadius)),
          width: containerWidth,
          height: containerHeight,
        ),
      ),
    );
  }
}
