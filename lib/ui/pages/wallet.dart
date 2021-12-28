import 'package:airplane_ticketing/theme.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: const Center(
        child: Text('Walletting'),
      ),
    );
  }
}
