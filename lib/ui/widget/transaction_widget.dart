import 'package:airplane_ticketing/model/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../theme.dart';
import 'detail_co.dart';




class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            value: '${transaction.amountOfTraveler} Person',
            valueColor: sPrimaryColor,
          ),
          DetailCO(
            detailName: 'Seat',
            value: transaction.selectedSeats,
            valueColor: sPrimaryColor,
          ),
          DetailCO(
            detailName: 'Insurance',
            value: transaction.insurance ? 'YES' : 'NO',
            valueColor: transaction.insurance ? sGreenColor : sbbPrimaryColor,
          ),
          DetailCO(
            detailName: 'Refundable',
            value: transaction.refundable ? 'YES' : 'NO',
            valueColor: transaction.refundable ? sGreenColor : sbbPrimaryColor,
          ),
          DetailCO(
            detailName: 'VAT',
            value: '${(transaction.vat * 100).toStringAsFixed(0)}%',
            valueColor: sPrimaryColor,
          ),
          DetailCO(
            detailName: 'Price',
            value: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.price),
            valueColor: sPrimaryColor,
          ),
          DetailCO(
            detailName: 'Grand Total',
            value: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(transaction.grandTotal),
            valueColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
