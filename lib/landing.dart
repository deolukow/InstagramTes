import 'package:botnavbar/Profile.dart';
import 'package:botnavbar/appbar.dart';
import 'package:botnavbar/explore.dart';
import 'package:botnavbar/hal1.dart';
import 'package:botnavbar/instagramProfileUI.dart';
import 'package:flutter/material.dart';

import './hal3.dart';
// import './main.dart';

void main() {
  runApp(LandingPage());
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Hal1(),
    new Explore(),
    new Hal3(),
    new Profile()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        // appBar: Appbarcs(),
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('Beranda',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 0
                          ? Colors.white
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.explore,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.explore,
                color: Colors.grey,
              ),
              title: Text('Explore',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 1
                          ? Colors.white
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.contact_page,
                color: Colors.white,
              ),
              icon: new Icon(
                Icons.contact_page,
                color: Colors.grey,
              ),
              title: new Text('Kontak',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 2
                          ? Colors.white
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.people,
                color: Colors.white,
              ),
              icon: new Icon(
                Icons.people,
                color: Colors.grey,
              ),
              title: new Text('Profile',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 3
                          ? Colors.white
                          : Colors.grey)),
            ),
          ],
        ));
  }
}
