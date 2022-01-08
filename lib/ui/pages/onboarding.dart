import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image_get_started.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: onboardStyle1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let \nyourself get an amazing experiences',
                  style: onboardStyle2,
                  textAlign: TextAlign.center,
                ),
                ButtonWidget(
                  title: 'Get Started',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_up');
                  },
                  isActive: true,
                  margin: const EdgeInsets.only(top: 50),
                  width: 220,
                ),
                ButtonWidget(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign_in');
                  },
                  isActive: false,
                  margin: const EdgeInsets.only(top: 20, bottom: 40),
                  width: 300,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
