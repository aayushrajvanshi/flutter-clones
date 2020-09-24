import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text("Hello"),
        ),
      ),
    );
  }
}
