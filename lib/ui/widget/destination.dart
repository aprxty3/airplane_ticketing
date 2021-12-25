import 'package:flutter/material.dart';

import '../../theme.dart';

class PopularDestination extends StatelessWidget {
  final String imageUrl;
  final double rate;
  final String destination1;
  final String destination2;

  const PopularDestination({
    Key? key,
    required this.imageUrl,
    required this.rate,
    required this.destination1,
    required this.destination2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 200,
        height: 323,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: sWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding:
                      const EdgeInsets.only(left: 5.5, bottom: 6, right: 3),
                  width: 55,
                  height: 30,
                  decoration: BoxDecoration(
                    color: sWhiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(defaultRadius),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icon_star.png',
                        width: 24,
                      ),
                      Text(
                        '$rate',
                        style: ratingStyle1,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destination1,
                    style: destinationStyle1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    destination2,
                    style: destinationStyle2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
