import 'package:flutter/material.dart';

import '../../theme.dart';

class DesTile extends StatelessWidget {
  final String imageUrl;
  final String destination1;
  final String destination2;
  final double rate;

  const DesTile({
    Key? key,
    required this.imageUrl,
    required this.destination1,
    required this.destination2,
    this.rate = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 350,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: sWhiteColor,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
          Container(
            width: 165,
            height: 53,
            margin:
                const EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 20),
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
          Container(
            width: 51,
            height: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icon_star.png',
                  width: 24,
                ),
                Text(
                  rate.toString(),
                  style: ratingStyle1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
