import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:airplane_ticketing/ui/widget/detail_co.dart';
import 'package:flutter/material.dart';

class COPage extends StatelessWidget {
  const COPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        height: 132,
        margin: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Image.asset(
              'assets/image_checkout.png',
              width: 291,
              height: 65,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'CGK',
                      style: mainStyle,
                    ),
                    Text(
                      'Tangerang',
                      style: coStyle1,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'TLC',
                      style: mainStyle,
                    ),
                    Text(
                      'Ciliwung',
                      style: coStyle1,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      Widget destinationName() {
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: const DecorationImage(
                  image: AssetImage('assets/image_destination1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style: paymentStyle1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Tangerang',
                    style: coStyle1,
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
                  style: ratingStyle1,
                ),
              ],
            )
          ],
        );
      }

      Widget coreContent() {
        return Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Booking Details',
                style: paymentStyle1,
              ),
              DetailCO(
                detailName: 'Traveler',
                value: '2 Person',
                valueColor: sPrimaryColor,
              ),
              DetailCO(
                detailName: 'Seat',
                value: 'A3, B3',
                valueColor: sPrimaryColor,
              ),
              DetailCO(
                detailName: 'Insurance',
                value: 'YES',
                valueColor: sGreenColor,
              ),
              DetailCO(
                detailName: 'Refundable',
                value: 'NO',
                valueColor: sbbPrimaryColor,
              ),
              DetailCO(
                detailName: 'VAT',
                value: '45%',
                valueColor: sPrimaryColor,
              ),
              DetailCO(
                detailName: 'Price',
                value: 'IDR 8.500.690',
                valueColor: sPrimaryColor,
              ),
              DetailCO(
                detailName: 'Grand Total',
                value: 'IDR 12.000.000',
                valueColor: kPrimaryColor,
              ),
            ],
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        width: double.infinity,
        height: 435,
        decoration: BoxDecoration(
          color: sWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              destinationName(),
              coreContent(),
            ],
          ),
        ),
      );
    }

    Widget paymentDetail() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: sWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: paymentStyle1,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 16, top: 16),
                  padding:
                      const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icon_plane.png',
                        width: 24,
                      ),
                      Text(
                        'Pay',
                        style: payment,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'IDR 80.400.000',
                      style: paymentStyle2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Current Balance',
                      style: paymentStyle3,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget button() {
      return ButtonWidget(
        title: 'Pay Now',
        onPressed: () {
          Navigator.pushNamed(context, '/success');
        },
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 20),
      );
    }

    Widget terms() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Terms and Conditions',
              style: shadowStyle,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          header(),
          content(),
          paymentDetail(),
          button(),
          terms(),
        ],
      ),
    );
  }
}
