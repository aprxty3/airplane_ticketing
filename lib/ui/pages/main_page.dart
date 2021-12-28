import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/pages/home.dart';
import 'package:airplane_ticketing/ui/widget/bottom_nav.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return const HomePage();
    }

    Widget bottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          // padding: const EdgeInsets.only(top: 18),
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: sWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BottomNavIcon(
                imageUrl: 'assets/icon_home.png',
                isActive: true,
              ),
              BottomNavIcon(
                  imageUrl: 'assets/icon_booking.png', isActive: false),
              BottomNavIcon(
                imageUrl: 'assets/icon_card.png',
                isActive: false,
              ),
              BottomNavIcon(
                imageUrl: 'assets/icon_settings.png',
                isActive: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          buildContent(),
          bottomNav(),
        ],
      ),
    );
  }
}
