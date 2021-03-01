import 'package:botnavbar/search_category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './colors.dart';
import './search_json.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    width:
    double.infinity;
    height:
    60;
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SafeArea(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: size.width - 30,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: textFieldBackground),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: white,
                        )),
                    style: TextStyle(fontSize: 15, color: white),
                    cursorColor: white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: List.generate(searchCategories.length, (index) {
                return CategoryStoryItem(
                  name: searchCategories[index],
                );
              }),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Wrap(
          spacing: 1,
          runSpacing: 1,
          children: List.generate(searchImages.length, (index) {
            return Container(
              width: (size.width - 3) / 3,
              height: (size.width - 3) / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(searchImages[index]),
                      fit: BoxFit.cover)),
            );
          }),
        )
      ],
    ));
  }
}
