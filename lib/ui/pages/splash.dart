import 'dart:async';

import 'package:airplane_ticketing/ui/pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:airplane_ticketing/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushNamed(context, '/onboard');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_plane.png',
                width: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'TICKAIR',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: sWhiteColor,
                  letterSpacing: 12,
                ),
              )
            ],
          ),
        ));
  }
}
