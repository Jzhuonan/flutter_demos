import 'package:flutter/material.dart';

class BasicView extends StatefulWidget {
  final String _title;

  BasicView(this._title);

  @override
  State<StatefulWidget> createState() {
    return _BasicViewState();
  }
}

class _BasicViewState extends State<BasicView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}
