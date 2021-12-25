import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/bottom_nav.dart';
import 'package:airplane_ticketing/ui/widget/destination.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget mainPage() {
      Widget header() {
        return Padding(
          padding: EdgeInsets.only(left: defaultMargin),
          child: Row(
            children: [
              Expanded(
                child: Column(
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
              ),
              Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.only(right: 24),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_profile.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget slider() {
        return Container(
          margin: EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PopularDestination(
                  imageUrl: 'assets/image_destination1.png',
                  rate: 4.8,
                  destination1: 'Lako Ciliwung',
                  destination2: 'Tangerang',
                ),
                PopularDestination(
                  imageUrl: 'assets/image_destination2.png',
                  rate: 4.1,
                  destination1: 'Masjib Jami',
                  destination2: 'Slawi',
                ),
                PopularDestination(
                  imageUrl: 'assets/image_destination3.png',
                  rate: 3.9,
                  destination1: 'Pantai Penyu',
                  destination2: 'Semarang',
                ),
                PopularDestination(
                  imageUrl: 'assets/image_destination4.png',
                  rate: 5.0,
                  destination1: 'Menara Cilingcing',
                  destination2: 'Tegal',
                ),
                PopularDestination(
                  imageUrl: 'assets/image_destination5.png',
                  rate: 4.8,
                  destination1: 'Payung Teduh',
                  destination2: 'Singapore',
                ),
              ],
            ),
          ),
        );
      }

      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              header(),
              slider(),
            ],
          ),
        ),
      );
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
      body: SafeArea(
        child: Stack(
          children: [
            mainPage(),
            bottomNav(),
          ],
        ),
      ),
    );
  }
}
