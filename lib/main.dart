import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/screens.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter App Clones',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: FacebookScreen(),
    ),
  );
}
