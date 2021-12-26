import 'package:flutter/material.dart';

import '../../theme.dart';

class TextForm extends StatelessWidget {
  final String title;
  final String hitText;
  final bool isActive;
  final EdgeInsets bottom;

  const TextForm({
    Key? key,
    required this.title,
    required this.hitText,
    this.isActive = false,
    this.bottom = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: bottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: signStyle,
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: sPrimaryColor,
            obscureText: isActive,
            decoration: InputDecoration(
              hintText: hitText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
