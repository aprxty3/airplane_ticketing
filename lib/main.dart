import 'package:airplane_ticketing/cubit/auth_cubit.dart';
import 'package:airplane_ticketing/cubit/pages_cubit.dart';
import 'package:airplane_ticketing/ui/pages/bonus.dart';
import 'package:airplane_ticketing/ui/pages/checkout_page.dart';
import 'package:airplane_ticketing/ui/pages/detail.dart';

import 'package:airplane_ticketing/ui/pages/main_page.dart';
import 'package:airplane_ticketing/ui/pages/onboarding.dart';
import 'package:airplane_ticketing/ui/pages/seat_page.dart';
import 'package:airplane_ticketing/ui/pages/sign_up.dart';
import 'package:airplane_ticketing/ui/pages/splash.dart';
import 'package:airplane_ticketing/ui/pages/success.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PagesCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/onboard': (context) => const OnboardPage(),
          '/sign_up': (context) => SignUpPage(),
          '/bonus': (context) => const BonusPage(),
          '/home': (context) => const MainPage(),
          '/detail': (context) => const DetailPage(),
          '/seat': (context) => const SeatPage(),
          '/checkout': (context) => const COPage(),
          '/success': (context) => const SuccessPage(),
        },
      ),
    );
  }
}
