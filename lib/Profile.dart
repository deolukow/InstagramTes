import 'package:flutter/material.dart';
import 'package:botnavbar/search_category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './colors.dart';
import './search_json.dart';
import './post.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  final urlProfile =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlUnqQMW53pllRzlmb5B-uLPq7HoDt3wy_gw&usqp=CAU';

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text('deolukow_', style: TextStyle(color: white)),
            Icon(
              Icons.verified,
              color: Colors.blue,
              size: 15,
            ),
            Icon(Icons.arrow_drop_down, color: white)
          ],
        ),
        actions: <Widget>[Icon(Icons.menu, color: white)],
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            LastViewed(),
            ProfileInformation(urlProfile: urlProfile),
            ProfileDescription(),
            ShortcutButton(),
            ListPosts(tabController: _tabController),
          ],
        ),
      ),
    );
  }
}

class ListPosts extends StatelessWidget {
  const ListPosts({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            labelColor: white,
            indicatorColor: white,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.border_all)),
              Tab(icon: Icon(Icons.assignment_ind)),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                GridView.count(
                  physics: ScrollPhysics(),
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 3.0,
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
                  // children: <String>[
                  //   'https://upload.wikimedia.org/wikipedia/commons/0/01/LinuxCon_Europe_Linus_Torvalds_03_%28cropped%29.jpg',
                  //   'https://images-na.ssl-images-amazon.com/images/I/41dKkez-1rL._SX326_BO1,204,203,200_.jpg',
                  //   'https://upload.wikimedia.org/wikipedia/commons/0/01/Bill_Gates_July_2014.jpg'
                  // ].map((String url) {
                  //   return GestureDetector(
                  //     onTap: () {
                  //       Navigator.of(context).push(
                  //           MaterialPageRoute(builder: (context) => Post(url)));
                  //     },
                  //     child: GridTile(
                  //       child: Hero(
                  //           tag: url,
                  //           child: Image.network(url, fit: BoxFit.cover)),
                  //     ),
                  //   );
                  // }).toList(),
                ),
                Container(
                  height: 100,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Deo Lukow',
                      style: TextStyle(color: white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShortcutButton extends StatelessWidget {
  const ShortcutButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: Text('Edit Profile', style: TextStyle(color: Colors.white)),
            color: textFieldBackground,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Promotions', style: TextStyle(color: Colors.white)),
            color: textFieldBackground,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Contact', style: TextStyle(color: Colors.white)),
            color: textFieldBackground,
          ),
        ],
      ),
    );
  }
}

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    "Deo Lukow",
                    style: TextStyle(fontSize: 13, color: white),
                  ),
                ],
              ),
              Text(
                "Creator",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                "XIV \nKAKAS, MINAHASA",
                style: TextStyle(fontSize: 13, color: white),
              ),
              Text(
                "https://deolukow.com",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    Key key,
    @required this.urlProfile,
  }) : super(key: key);

  final String urlProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                urlProfile,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                '12',
                style: TextStyle(fontSize: 20, color: white),
              ),
              Text(
                "Posts",
                style: TextStyle(color: white),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text('2,5M', style: TextStyle(fontSize: 20, color: white)),
              Text("Followers", style: TextStyle(color: white))
            ],
          ),
          Column(
            children: <Widget>[
              Text('420', style: TextStyle(fontSize: 20, color: white)),
              Text("Following", style: TextStyle(color: white))
            ],
          ),
        ],
      ),
    );
  }
}

class LastViewed extends StatelessWidget {
  const LastViewed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(width: 1, color: white),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('10M',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
          Text(' profile visits in the last 7 days',
              style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
