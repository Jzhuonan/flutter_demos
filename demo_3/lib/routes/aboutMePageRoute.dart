import 'package:flutter/material.dart';

class AboutMePageRoute extends PageRouteBuilder {
  final Widget widget;

  AboutMePageRoute(this.widget)
    :super(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
      ) {
        return widget;
      },
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
        Widget child
      ) {
        // Fade 
        // return FadeTransition(
        //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.fastOutSlowIn,
        //   )),
        //   child: child,
        // );

        // Scale
        // return ScaleTransition(
        //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.fastOutSlowIn,
        //   )),
        //   child: child, 
        // );

        // Rotation and Scale
        // return RotationTransition(
        //   turns: Tween(begin: 0.0, end: 1.0)
        //   .animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.fastOutSlowIn,
        //   )),
        //   child: ScaleTransition(
        //     scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        //       parent: animation1,
        //       curve: Curves.fastOutSlowIn,
        //     )),
        //     child: child,
        //   ),
        // );

        // Slide
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1.0, 0.0),
            end: Offset(0.0, 0.0),
          ).animate(CurvedAnimation(
            parent: animation1,
            curve: Curves.fastOutSlowIn
          )),
          child: child,
        );
      }
    );
}