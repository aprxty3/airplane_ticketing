import 'package:airplane_ticketing/ui/pages/bonus.dart';
import 'package:airplane_ticketing/ui/pages/checkout_page.dart';
import 'package:airplane_ticketing/ui/pages/detail.dart';
import 'package:airplane_ticketing/ui/pages/home.dart';
import 'package:airplane_ticketing/ui/pages/onboarding.dart';
import 'package:airplane_ticketing/ui/pages/seat_page.dart';
import 'package:airplane_ticketing/ui/pages/sign_up.dart';
import 'package:airplane_ticketing/ui/pages/splash.dart';
import 'package:airplane_ticketing/ui/pages/success.dart';
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
        '/bonus': (context) => const BonusPage(),
        '/home': (context) => const HomePage(),
        '/detail': (context) => const DetailPage(),
        '/seat': (context) => const SeatPage(),
        '/checkout': (context) => const COPage(),
        '/success': (context) => const SuccessPage(),
      },
    );
  }
}
