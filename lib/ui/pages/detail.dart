import 'package:airplane_ticketing/model/destination_model.dart';
import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:airplane_ticketing/ui/widget/interest.dart';
import 'package:airplane_ticketing/ui/widget/photos.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatelessWidget {
  final DestinationModel destination;

  const DetailPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backView() {
      return Container(
        margin: const EdgeInsets.all(0),
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(destination.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget shadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: const EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              sWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ],
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, right: defaultMargin, left: defaultMargin),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset(
              'assets/icon_emblem.png',
              width: 108,
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.only(top: 256),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.name,
                          style: namedesStyle1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          destination.city,
                          style: namedesStyle2,
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
                        destination.rating.toString(),
                        style: ratingStyle2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: 327,
        height: 300,
        margin: EdgeInsets.only(
            top: 400, left: defaultMargin, right: defaultMargin),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: sWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: detailStyle1,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Berada di jalur jalan provinsi yang \nmenghubungkan Denpasar \nSingaraja serta letaknya yang dekat \ndengan Kebun Raya Eka Karya \nmenjadikan tempat Bali.',
                      style: detailStyle2,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Photos',
                      style: detailStyle1,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Photos(
                            imageUrl: 'assets/image_photo1.png',
                          ),
                          Photos(
                            imageUrl: 'assets/image_photo2.png',
                          ),
                          Photos(
                            imageUrl: 'assets/image_photo3.png',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Interest',
                      style: detailStyle1,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: const [
                        Interest(interest1: 'Kids Park'),
                        Interest(interest1: 'Honor Bridge')
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Interest(interest1: 'City Museum'),
                        Interest(interest1: 'Central Mall'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget booking() {
      return Container(
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          top: 700,
          bottom: 20,
        ),
        width: 327,
        height: 55,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    NumberFormat.currency(
                      locale: 'id',
                      symbol: 'IDR ',
                      decimalDigits: 0,
                    ).format(destination.price),
                    style: detailPriceStyle1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'per orang',
                    style: detailPriceStyle2,
                  ),
                ],
              ),
            ),
            ButtonWidget(
              title: 'Book Now',
              onPressed: () {
                Navigator.pushNamed(context, '/seat');
              },
              width: 170,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backView(),
            shadow(),
            title(),
            content(),
            booking(),
          ],
        ),
      ),
    );
  }
}
