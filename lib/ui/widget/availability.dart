import 'package:airplane_ticketing/cubit/seat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../theme.dart';

class AvailabilityWidget extends StatelessWidget {
  final int index;
  final String id;

  const AvailabilityWidget({
    Key? key,
    required this.index,
    required this.id,
  }) : super(key: key);

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

    return GestureDetector(
      onTap: () {
        context.read<SeatCubit>().selectSeat(id);
      },
      child: Container(
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
      ),
    );
  }
}
