import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 212),
          child: Column(
            children: [
              Image.asset(
                'assets/image_success.png',
                width: 300,
                height: 150,
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                'Well Booked 😍',
                style: bonustStyle1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Are you ready to explore the new \nworld of experiences?',
                style: bonusStyle2,
                textAlign: TextAlign.center,
              ),
              ButtonWidget(
                title: 'My Booking',
                onPressed: () {},
                width: 220,
                margin: const EdgeInsets.only(top: 50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
