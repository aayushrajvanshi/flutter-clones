import 'dart:async';

import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(
    MaterialApp(
      theme: ThemeData.light(),
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                centerTitle: false,
                backgroundColor: Color.fromRGBO(7, 94, 84, 1),
                title: Text("WhatsApp"),
                floating: false,
                // pinned: true,
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                    iconSize: 24,
                    splashRadius: 24,
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                    iconSize: 24,
                    splashRadius: 24,
                  ),
                ],
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.camera_alt),
                      ),
                      Tab(text: "CHATS"),
                      Tab(text: "STATUS"),
                      Tab(text: "CALLS"),
                    ],
                    indicatorColor: Colors.white,
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              Icon(Icons.camera_alt),
              Icon(Icons.chat),
              Icon(Icons.notifications),
              Icon(Icons.call),
            ],
          ),
          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.message),
          //   onPressed: () {},
          //   backgroundColor: Color.fromRGBO(37, 211, 102, 1),
          // ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color.fromRGBO(7, 94, 84, 1),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
