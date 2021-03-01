import 'package:flutter/material.dart';

void main() {
  runApp(Hal4());
}

class Hal4 extends StatefulWidget {
  @override
  _Hal4State createState() => _Hal4State();
}

class _Hal4State extends State<Hal4> {
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
                  Text("Hal4 kontak"),
                ]),
          )),
    ));
  }
}
