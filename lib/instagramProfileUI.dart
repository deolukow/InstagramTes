import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './search_json.dart';

class IgProfil extends StatefulWidget {
  @override
  _IgProfilState createState() => _IgProfilState();
}

class _IgProfilState extends State<IgProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(color: Color.fromARGB(255, 250, 250, 250)),
        child: ListView(
          children: <Widget>[
            Container(
              width: 290,
              height: 21,
              margin: EdgeInsets.only(left: 15, right: 10, top: 20),
              child: Row(
                children: <Widget>[
                  Opacity(
                    opacity: 1,
                    child: Text(
                      "deolukow_",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                  Spacer(),
                  Container(
                    width: 20,
                    height: 17,
                    margin: EdgeInsets.only(right: 1),
                    child: Opacity(
                      opacity: 1,
                      child: Image.asset(
                        "assets/4.jpg",
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 17),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        //profile foto
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 90,
                            height: 170,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imagePath[2])),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10000)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  width: 25,
                                  height: 25,
                                  margin: EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 56, 151, 240),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Container(
                                        height: 12,
                                        margin:
                                            EdgeInsets.only(left: 4, right: 5),
                                        child: Opacity(
                                          opacity: 1,
                                          child: Image.asset("assets/3.jpg",
                                              fit: BoxFit.none),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 24),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(bottom: 14),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "47",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "Posts",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 14),
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "5,168",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "Followers",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 14),
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "272",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "Following",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 200,
                margin: EdgeInsets.only(left: 1, top: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Opacity(
                        opacity: 1,
                        child: Text(
                          "Teknik Informatika Unsrat",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 3),
            ),
            Text(
              "Developer in XXX group*",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 3),
            ),
            Text(
              "www.Deolukow.com*",
              style: TextStyle(
                  color: Colors.lightBlue.shade500,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            Container(
              height: 29,
              margin: EdgeInsets.only(right: 15, top: 15),
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade800,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: OutlineButton(
                onPressed: () {},
                child: Text(
                  "Edit Profile",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.only(top: 20, left: 5),
              child: ListView.builder(
                itemCount: imagePath.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imagePath[index])),
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(10000)),
                        child: index == 0
                            ? Center(
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                              )
                            : Container(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("${text[index]}"),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Container(
              width: 375,
              height: 45,
              margin: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 23,
                      height: 23,
                      child: Image.asset('assets/9.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 1,
                    width: 200,
                    color: Colors.black,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 23,
                      height: 23,
                      child: Image.asset('assets/10.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 3,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  for (var i = 0; i < imagePath.length; i++)
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("${imagePath[i]}"))),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
