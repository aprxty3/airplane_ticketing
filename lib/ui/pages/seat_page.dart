import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: 160,
        height: 72,
        margin: const EdgeInsets.only(bottom: 30, top: 65),
        child: Text(
          'Select Your \nFavorite Seat',
          style: mainStyle,
        ),
      );
    }

    Widget availability() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icon_available.png',
                width: 16,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Available',
                style: availableStyle,
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_selected.png',
                width: 16,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Selected',
                style: availableStyle,
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/icon_unavailable.png',
                width: 16,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Unavailable',
                style: availableStyle,
              ),
            ],
          )
        ],
      );
    }

    Widget choseSeat() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          color: sWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      );
    }

    Widget button() {
      return ButtonWidget(
        title: ('Checkout'),
        onPressed: () {},
        width: double.infinity,
        margin: const EdgeInsets.only(
          bottom: 30,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          header(),
          availability(),
          choseSeat(),
          button(),
        ],
      ),
    );
  }
}
