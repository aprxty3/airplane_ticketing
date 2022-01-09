import 'package:airplane_ticketing/cubit/pages_cubit.dart';
import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/pages/home.dart';
import 'package:airplane_ticketing/ui/pages/setting.dart';
import 'package:airplane_ticketing/ui/pages/transaction.dart';
import 'package:airplane_ticketing/ui/pages/wallet.dart';
import 'package:airplane_ticketing/ui/widget/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();

        default:
          return HomePage();
      }
    }

    Widget bottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          // padding: const EdgeInsets.only(top: 18),
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: sWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BottomNavIcon(
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              BottomNavIcon(
                index: 1,
                imageUrl: 'assets/icon_booking.png',
              ),
              BottomNavIcon(
                index: 2,
                imageUrl: 'assets/icon_card.png',
              ),
              BottomNavIcon(
                index: 3,
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PagesCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBgColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              bottomNav(),
            ],
          ),
        );
      },
    );
  }
}
