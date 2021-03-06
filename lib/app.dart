import 'package:flutter/material.dart';
import 'package:flutter_clone/routes.dart';
// import 'package:flutter_clone/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_clone/screens/signature_pad/signature_pad_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Clones',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: SignaturePad.routeName,
      routes: routes,
    );
  }
}
