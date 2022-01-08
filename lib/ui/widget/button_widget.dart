import 'package:flutter/material.dart';

import '../../theme.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  final bool isActive;
  final double height;

  const ButtonWidget({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    this.isActive = true,
    this.height = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: isActive ? kPrimaryColor : Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: buttonStyle,
        ),
      ),
    );
  }
}
