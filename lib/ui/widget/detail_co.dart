import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme.dart';

class DetailCO extends StatelessWidget {
  final String detailName;
  final String value;
  final Color valueColor;

  const DetailCO({
    Key? key,
    required this.detailName,
    required this.value,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            'assets/icon_check.png',
            width: 16,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            detailName,
            style: coStyle2,
          ),
          const Spacer(),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
