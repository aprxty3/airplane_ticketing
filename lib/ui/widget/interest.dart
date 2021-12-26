import 'package:flutter/material.dart';

import '../../theme.dart';

class Interest extends StatelessWidget {
  final String interest1;
  
  const Interest({
    Key? key,
    required this.interest1,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icon_check.png',
                width: 16,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                interest1,
                style: detailStyle2,
              ),
            ],
          ),
         
        ],
      ),
    );
  }
}
