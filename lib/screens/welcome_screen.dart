import 'package:flutter/material.dart';
import 'package:one_tap_app/screens/startnow_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => StartMenu(),
        ),
      );
    });

    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/onetapwcs.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}