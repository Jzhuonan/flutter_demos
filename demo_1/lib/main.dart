import 'package:flutter/material.dart';

import './UI/bottomNavBar.dart';

void main() => runApp(DemoOne());

class DemoOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
      title: 'Flutter Bottom Navigation Bar',
      theme: ThemeData.light(),
    );
  }
}
