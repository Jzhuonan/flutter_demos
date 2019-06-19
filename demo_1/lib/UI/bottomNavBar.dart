import 'package:flutter/material.dart';

import '../pages/emailpage.dart';
import '../pages/airplaypage.dart';
import '../pages/homepage.dart';
import '../pages/pagespage.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavBarState();
  }
}

class _BottomNavBarState extends State<BottomNavBar> {
  final _bottomNavBarColor = Colors.blue;
  List<Widget> _pages = List();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages
      ..add(HomePage())
      ..add(EmailPage())
      ..add(PagesPage())
      ..add(AirplayPage());
  }

  void _switchPages(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          _switchPages(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _bottomNavBarColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _bottomNavBarColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavBarColor,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: _bottomNavBarColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottomNavBarColor,
            ),
            title: Text(
              'Pages',
              style: TextStyle(color: _bottomNavBarColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavBarColor,
            ),
            title: Text(
              'Airplay',
              style: TextStyle(color: _bottomNavBarColor),
            )
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
