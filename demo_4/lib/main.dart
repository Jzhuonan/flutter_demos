import 'package:flutter/material.dart';

import './pages/homepage.dart';

void main() => runApp(DemoFour());

class DemoFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FrostedGlass Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}