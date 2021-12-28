import 'package:airplane_ticketing/cubit/pages_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme.dart';

class BottomNavIcon extends StatelessWidget {
  final int index;
  final String imageUrl;

  const BottomNavIcon({
    Key? key,
    required this.index,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PagesCubit>().setPages(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PagesCubit>().state == index
                ? kPrimaryColor
                : sGreyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PagesCubit>().state == index
                  ? kPrimaryColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          )
        ],
      ),
    );
  }
}
