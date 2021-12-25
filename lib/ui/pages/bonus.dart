import 'package:airplane_ticketing/theme.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: bonusNameStyle1,
                    ),
                    Text(
                      'Aji Prasetyo',
                      style: bonusNameStyle2,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_plane.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Pay',
                      style: payStyle,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Balance',
              style: bonusNameStyle1,
            ),
            Text(
              'IDR 280.000.000',
              style: bonusNameStyle3,
            ),
          ],
        ),
      );
    }

    Widget bonus() {
      return Container(
        margin: const EdgeInsets.only(top: 80, bottom: 50),
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: bonustStyle1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that \nyou can buy a flight ticket',
              style: bonusStyle2,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        width: 220,
        height: 55,
        // color: Colors.blue,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            'Start Fly Now',
            style: buttonStyle,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            bonus(),
            button(),
          ],
        ),
      ),
    );
  }
}
