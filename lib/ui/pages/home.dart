import 'package:airplane_ticketing/theme.dart';

import 'package:airplane_ticketing/ui/widget/destination.dart';
import 'package:airplane_ticketing/ui/widget/destination_tile.dart';
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
          margin: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
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

      Widget newDestination() {
        return Container(
          margin: EdgeInsets.only(
              top: 20, right: defaultMargin, left: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You Must To Here!!',
                style: typeStyle,
              ),
              const SizedBox(
                height: 8,
              ),
              const DesTile(
                imageUrl: 'assets/image_destination6.png',
                destination1: 'Danau Beratan',
                destination2: 'Singaraja',
                rate: 4.5,
              ),
              const DesTile(
                imageUrl: 'assets/image_destination7.png',
                destination1: 'Opera',
                destination2: 'Sydney',
                rate: 4.9,
              ),
              const DesTile(
                imageUrl: 'assets/image_destination8.png',
                destination1: 'Roma',
                destination2: 'Italy',
                rate: 4.3,
              ),
              const DesTile(
                imageUrl: 'assets/image_destination9.png',
                destination1: 'Kicir-Kicir',
                destination2: 'Ancol',
                rate: 3.8,
              ),
              const DesTile(
                imageUrl: 'assets/image_destination10.png',
                destination1: 'Kampung Pelangi',
                destination2: 'heyho',
                rate: 4.4,
              ),
            ],
          ),
        );
      }

      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 65, bottom: 90),
          child: Column(
            children: [
              header(),
              slider(),
              newDestination(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Stack(
        children: [
          mainPage(),
        ],
      ),
    );
  }
}
