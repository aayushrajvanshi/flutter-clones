import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'WhatsApp Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: HomeScreen(),
    ),
  );
}
