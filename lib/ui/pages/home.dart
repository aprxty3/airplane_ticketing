import 'package:airplane_ticketing/main.dart';
import 'package:airplane_ticketing/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget mainPage() {
      Widget header() {
        return Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Apa Kabs! \nAji Prasetyo',
                  style: mainStyle,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to fly today?',
                  style: shadowStyle,
                )
              ],
            ),
            
          ],
        );
      }

      return Padding(
        padding: const EdgeInsets.only(left: 24, top: 30),
        child: Column(
          children: [
            header(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: ListView(
        children: [
          mainPage(),
        ],
      ),
    );
  }
}
