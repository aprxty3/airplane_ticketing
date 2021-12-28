import 'package:flutter/material.dart';

import '../../theme.dart';

class AvailabilityWidget extends StatelessWidget {
  final int index;

  const AvailabilityWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (index) {
        case 0:
          return availableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return unavailableColor;

        default:
          return unavailableColor;
      }
    }

    borderColor() {
      switch (index) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return unavailableColor;

        default:
          return unavailableColor;
      }
    }

    child() {
      switch (index) {
        case 0:
          return const SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: seatStyle2,
            ),
          );
        case 2:
          return const SizedBox();

        default:
          return const SizedBox();
      }
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: child(),
    );
  }
}
