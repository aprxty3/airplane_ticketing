import 'package:flutter/material.dart';

import '../../theme.dart';

class Photos extends StatelessWidget {
  final String imageUrl;

  const Photos({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
