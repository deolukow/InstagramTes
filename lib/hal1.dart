import 'package:flutter/material.dart';

void main() {
  runApp(Hal1());
}

void mainn() {
  runApp(MaterialApp());
}

class Hal1 extends StatefulWidget {
  @override
  _Hal1State createState() => _Hal1State();
}

class _Hal1State extends State<Hal1> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("tambah data"),
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      "data ke-" + counter.toString(),
                      style: TextStyle(fontSize: 35),
                    ));
                    counter++;
                  });
                },
              ),
              RaisedButton(
                child: Text("hapus data"),
                onPressed: () {
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  });
                },
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    );
  }
}
