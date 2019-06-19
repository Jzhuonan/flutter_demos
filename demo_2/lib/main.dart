import 'package:flutter/material.dart';

import './UI/bottomCircularBar.dart';

void main() => runApp(DemoTow());

class DemoTow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomCircularBarUI(),
      title: 'Demo Tow',
      theme: ThemeData.light(),
    );
  }
}
