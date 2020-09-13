import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                centerTitle: false,
                backgroundColor: Color.fromRGBO(7, 94, 84, 1),
                title: Text("WhatsApp"),
                floating: true,
                snap: true,
                elevation: 0,
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
                pinned: true,
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
              ),
            ];
          },
          body: TabBarView(
            children: [
              Icon(Icons.camera_alt),
              CustomScrollView(
                slivers: <Widget>[
                  SliverFixedExtentList(
                    itemExtent: 150.0,
                    delegate: SliverChildListDelegate(
                      [
                        Container(color: Colors.amber),
                        Container(color: Colors.purple),
                        Container(color: Colors.green),
                        Container(color: Colors.orange),
                        Container(color: Colors.yellow),
                        Container(color: Colors.pink),
                        Container(color: Colors.amber),
                        Container(color: Colors.purple),
                        Container(color: Colors.green),
                        Container(color: Colors.orange),
                        Container(color: Colors.yellow),
                        Container(color: Colors.pink),
                        Container(color: Colors.amber),
                        Container(color: Colors.purple),
                        Container(color: Colors.green),
                        Container(color: Colors.orange),
                        Container(color: Colors.yellow),
                        Container(color: Colors.pink),
                        Container(color: Colors.amber),
                        Container(color: Colors.purple),
                        Container(color: Colors.green),
                        Container(color: Colors.orange),
                        Container(color: Colors.yellow),
                        Container(color: Colors.pink),
                      ],
                    ),
                  ),
                ],
              ),
              Icon(Icons.notifications),
              Icon(Icons.call),
            ],
          ),
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
