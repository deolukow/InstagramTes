import 'package:flutter/material.dart';
import 'appbar.dart';
import './landing.dart';

void main() {
  runApp(MyApp());
}

void mainn() {
  runApp(MaterialApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}
