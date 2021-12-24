import 'package:airplane_ticketing/ui/pages/onboarding.dart';
import 'package:airplane_ticketing/ui/pages/sign_up.dart';
import 'package:airplane_ticketing/ui/pages/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboard': (context) => const OnboardPage(),
        '/sign_up': (context) => const SignUpPage(),
      },
    );
  }
}
