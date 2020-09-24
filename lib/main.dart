import 'package:flutter/material.dart';
import 'package:whatsapp_clone/routes.dart';
import 'package:whatsapp_clone/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter App Clones',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: OnboardingScreen.routeName,
      routes: routes,
    ),
  );
}
