import 'package:flutter/widgets.dart';
import 'package:flutter_clone/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_clone/screens/signature_pad/signature_pad_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  SignaturePad.routeName: (context) => SignaturePad()
};
