import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text(
          'About Me',
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            return Navigator.pop(context);
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}
