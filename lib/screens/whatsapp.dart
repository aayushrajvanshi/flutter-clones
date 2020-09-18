import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
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
                backgroundColor: Color.fromRGBO(7, 94, 84, 1),
                centerTitle: false,
                title: Text("WhatsApp"),
                pinned: true,
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
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                    Tab(text: "CHATS"),
                    Tab(text: "STATUS"),
                    Tab(text: "CALLS"),
                  ],
                  indicatorColor: Colors.white,
                  indicatorWeight: 4.0,
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
