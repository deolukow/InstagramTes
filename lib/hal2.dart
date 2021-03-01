import 'package:flutter/material.dart';

void main() {
  runApp(Hal2());
}

class Hal2 extends StatefulWidget {
  @override
  _Hal2State createState() => _Hal2State();
}

class _Hal2State extends State<Hal2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SafeArea(
      child: new Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hal2 tugas"),
                ]),
          )),
    ));
  }
}
