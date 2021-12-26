import 'package:airplane_ticketing/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backView() {
      return Container(
        width: double.infinity,
        height: 450,
        child: Image.asset(
          'assets/image_destination1.png',
          fit: BoxFit.cover,
        ),
      );
    }

    Widget shadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              sWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ],
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, right: defaultMargin, left: defaultMargin),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              'assets/icon_emblem.png',
              width: 108,
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.only(top: 256),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: namedesStyle1,
                        ),
                        Text(
                          'Tangerang',
                          style: namedesStyle2,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icon_star.png',
                        width: 24,
                      ),
                      Text(
                        '4.8',
                        style: ratingStyle2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: 327,
        height: 446,
        margin: EdgeInsets.only(
            top: 400, left: defaultMargin, right: defaultMargin),
        decoration: BoxDecoration(
          color: sWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backView(),
            shadow(),
            title(),
            content(),
          ],
        ),
      ),
    );
  }
}
