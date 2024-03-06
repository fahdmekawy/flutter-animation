import 'package:flutter/material.dart';
import 'package:flutter_animation/widgets/animated_container_widget.dart';
import 'package:flutter_animation/widgets/animated_default_text_style_widget.dart';
import 'package:flutter_animation/widgets/animated_opacity_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            AnimatedContainerWidget(),
            SizedBox(height: 20),
            AnimatedOpacityWidget(),
            SizedBox(height: 20),
            AnimatedDefaultTextStyleWidget()
          ],
        ),
      ),
    );
  }
}
