import 'package:flutter/material.dart';

class Appbarcs extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.add_business_sharp,
        color: Colors.white,
      ),
      title: Text(
        "Aplikasi Penipuan Online",
        style: TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight),
          // image: DecorationImage(
          //     image: AssetImage("assets/pattern.png"),
          //     fit: BoxFit.none,
          //     repeat: ImageRepeat.repeat)
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
