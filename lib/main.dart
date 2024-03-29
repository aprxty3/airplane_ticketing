import 'package:airplane_ticketing/cubit/auth_cubit.dart';
import 'package:airplane_ticketing/cubit/destination_cubit.dart';
import 'package:airplane_ticketing/cubit/pages_cubit.dart';
import 'package:airplane_ticketing/cubit/transaction_cubit.dart';
import 'package:airplane_ticketing/ui/pages/bonus.dart';

import 'package:airplane_ticketing/ui/pages/main_page.dart';
import 'package:airplane_ticketing/ui/pages/onboarding.dart';

import 'package:airplane_ticketing/ui/pages/sign_in.dart';
import 'package:airplane_ticketing/ui/pages/sign_up.dart';
import 'package:airplane_ticketing/ui/pages/splash.dart';
import 'package:airplane_ticketing/ui/pages/success.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/seat_cubit.dart';

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
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/onboard': (context) => OnboardPage(),
          '/sign_up': (context) => SignUpPage(),
          '/sign_in': (context) => SignInPage(),
          '/bonus': (context) => BonusPage(),
          '/home': (context) => MainPage(),
          '/success': (context) => SuccessPage(),
        },
      ),
    );
  }
}
