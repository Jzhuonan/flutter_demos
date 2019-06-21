import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/rendering.dart' as prefix1;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            child: Image.asset('assets/images/food.jpeg'),
            constraints: const BoxConstraints.expand(),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500,
                    height: 700,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        'theDog',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
