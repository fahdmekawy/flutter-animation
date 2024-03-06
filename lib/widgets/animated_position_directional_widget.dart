import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedPositionDirectionalWidget extends StatefulWidget {
  const AnimatedPositionDirectionalWidget({super.key});

  @override
  State<AnimatedPositionDirectionalWidget> createState() =>
      _AnimatedPositionDirectionalWidgetState();
}

class _AnimatedPositionDirectionalWidgetState
    extends State<AnimatedPositionDirectionalWidget> {
  double left = 10;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: 420,
          color: Colors.red,
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 2),
          curve: Curves.fastLinearToSlowEaseIn,
          left: left,
          top: left,
          child: GestureDetector(
            onTap: () {
              setState(() {
                left == 10
                    ? left = 180
                    : left == 180
                        ? left = 100
                        : left = 10;
              });
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
        )
      ],
    );
  }
}
