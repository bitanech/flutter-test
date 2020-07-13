import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test Work',
      home: ColorPage(),
    );
  }
}

class ColorPage extends StatefulWidget {
  ColorPage({Key key}) : super(key: key);

  @override
  _ColorPageState createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  Color _bgColor;

  @override
  void initState() {
    _changeBgColor();
    super.initState();
  }

  void _changeBgColor() {
    setState(() {
      _bgColor = _randomColorGenerator();
    });
  }

  Color _randomColorGenerator() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
          child: const Center(
            child: const Text('Hey there'),
          ),
          constraints: const BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: _bgColor,
          ),
        ),
        onTap: _changeBgColor,
      ),
    );
  }
}
