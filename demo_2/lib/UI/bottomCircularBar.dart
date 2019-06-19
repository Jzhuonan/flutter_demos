import 'package:flutter/material.dart';

import '../pages/basicView.dart';

class BottomCircularBarUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomCircularBarUIState();
  }
}

class _BottomCircularBarUIState extends State<BottomCircularBarUI> {
  List<Widget> _pages = List();
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _pages..add(BasicView('HOME'))..add(BasicView('CORRECT'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      appBar: AppBar(
        title: Text('Demo Tow'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ccontext) {
            return BasicView('PLUS');
          }));
        },
        tooltip: 'Add a page',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.verified_user),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
