import 'package:flutter/material.dart';

import '../../theme.dart';

class Interest extends StatelessWidget {
  final String interest1;
  final String interest2;

  const Interest({
    Key? key,
    required this.interest1,
    required this.interest2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 23),
          width: 122,
          child: Row(
            children: [
              Image.asset(
                'assets/icon_check.png',
                width: 16,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                interest1,
                style: detailStyle2,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Image.asset(
              'assets/icon_check.png',
              width: 16,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              interest2,
              style: detailStyle2,
            ),
          ],
        )
      ],
    );
  }
}
