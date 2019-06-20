import 'package:flutter/material.dart';
import './pages/homepage.dart';

void main() => runApp(DemoThree());

class DemoThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Three',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}