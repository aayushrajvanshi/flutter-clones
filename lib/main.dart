import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 1;

  List<String> quotes = [
    'Officia nulla exercitation incididunt anim nulla magna Lorem officia ipsum aliquip qui sit labore.',
    'Labore aute occaecat aliqua occaecat.',
    'Ad aliqua nisi deserunt ex.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        centerTitle: false,
        backgroundColor: Color.fromRGBO(7, 94, 84, 1),
        elevation: 0.0,
      ),
      backgroundColor: Color.fromRGBO(236, 229, 221, 1),
      // body: Container(
      //   child: Center(child: Image.asset("assets/background.png")),
      // ),
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: quotes.map((quote) => Text(quote)).toList(),
              ))),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        tooltip: "Send",
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        backgroundColor: Color.fromRGBO(37, 211, 102, 1),
      ),
    );
  }
}
