import 'package:flutter/material.dart';
import 'package:botnavbar/search_category_item.dart';

import 'colors.dart';

void main() {
  runApp(Hal3());
}

class Hal3 extends StatefulWidget {
  @override
  _Hal3State createState() => _Hal3State();
}

class _Hal3State extends State<Hal3> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
          Container(
            color: black,
          ),
          Container(
            color: red,
          ),
        ],
      ),
    );
  }
}
