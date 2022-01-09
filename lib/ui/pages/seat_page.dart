import 'package:airplane_ticketing/cubit/seat_cubit.dart';
import 'package:airplane_ticketing/model/destination_model.dart';
import 'package:airplane_ticketing/model/transaction_model.dart';
import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/pages/checkout_page.dart';
import 'package:airplane_ticketing/ui/widget/availability.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SeatPage extends StatelessWidget {
  final DestinationModel destination;

  const SeatPage(this.destination, {Key? key}) : super(key: key);

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
      Widget indicator() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  'A',
                  style: seatStyle1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  'B',
                  style: seatStyle1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  ' ',
                  style: seatStyle1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  'C',
                  style: seatStyle1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  'D',
                  style: seatStyle1,
                ),
              ),
            ),
          ],
        );
      }

      Widget seat1() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AvailabilityWidget(
              id: 'A1',
            ),
            const AvailabilityWidget(
              id: 'B1',
            ),
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '1',
                  style: seatStyle1,
                ),
              ),
            ),
            const AvailabilityWidget(
              id: 'C1',
            ),
            const AvailabilityWidget(
              id: 'D1',
            ),
          ],
        );
      }

      Widget seat2() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AvailabilityWidget(
              id: 'A2',
            ),
            const AvailabilityWidget(
              id: 'B2',
            ),
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '2',
                  style: seatStyle1,
                ),
              ),
            ),
            const AvailabilityWidget(
              id: 'C2',
            ),
            const AvailabilityWidget(
              id: 'D2',
            ),
          ],
        );
      }

      Widget seat3() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AvailabilityWidget(
              id: 'A3',
            ),
            const AvailabilityWidget(
              id: 'B3',
            ),
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '3',
                  style: seatStyle1,
                ),
              ),
            ),
            const AvailabilityWidget(
              id: 'C3',
            ),
            const AvailabilityWidget(
              id: 'D3',
            ),
          ],
        );
      }

      Widget seat4() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AvailabilityWidget(
              id: 'A4',
            ),
            const AvailabilityWidget(
              id: 'B4',
            ),
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '4',
                  style: seatStyle1,
                ),
              ),
            ),
            const AvailabilityWidget(
              id: 'C4',
            ),
            const AvailabilityWidget(
              id: 'D4',
            ),
          ],
        );
      }

      Widget seat5() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AvailabilityWidget(
              id: 'A5',
            ),
            const AvailabilityWidget(
              id: 'B5',
            ),
            Container(
              margin: const EdgeInsets.all(0),
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  '5',
                  style: seatStyle1,
                ),
              ),
            ),
            const AvailabilityWidget(
              id: 'C5',
            ),
            const AvailabilityWidget(
              id: 'D5',
            ),
          ],
        );
      }

      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
            width: double.infinity,
            height: 480,
            decoration: BoxDecoration(
              color: sWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  indicator(),
                  seat1(),
                  seat2(),
                  seat3(),
                  seat4(),
                  seat5(),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your seat',
                          style: seatStyle3,
                        ),
                        Text(
                          state.join(', '),
                          style: seatStyle4,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: seatStyle3,
                        ),
                        Text(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'IDR ',
                            decimalDigits: 0,
                          ).format(state.length * destination.price),
                          style: seatPriceStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    Widget button() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return ButtonWidget(
            title: ('Checkout'),
            onPressed: () {
              int price = destination.price * state.length;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => COPage(
                    TransactionModel(
                      destination: destination,
                      amountOfTraveler: state.length,
                      selectedSeats: state.join(', '),
                      insurance: true,
                      refundable: false,
                      vat: 0.45,
                      price: price,
                      grandTotal: price + (price * 0.45).toInt(),
                    ),
                  ),
                ),
              );
            },
            width: double.infinity,
            margin: const EdgeInsets.only(
              bottom: 10,
            ),
          );
        },
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
