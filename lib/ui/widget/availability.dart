import 'package:flutter/material.dart';

import '../../theme.dart';

class AvailabilityWidget extends StatelessWidget {
  


  const AvailabilityWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.only(bottom: 30),
            width: 91,
            height: 21,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/icon_available.png',
                  width: 16,
                ),
                Text(
                  'Available',
                  style: availableStyle,
                ),
              ],
            ),
          );
  }
}