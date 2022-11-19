// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cartpayment_test/constants/colors.dart';
import 'package:cartpayment_test/screens/cart_screen/wigets/button_payment_widget.dart';
import 'package:flutter/material.dart';

class SumOrder extends StatefulWidget {
  const SumOrder({super.key});

  @override
  State<SumOrder> createState() => _SumOrderState();
}

class _SumOrderState extends State<SumOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      color: secondaryColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 21.0),
                  child: Text(
                    '฿ 44,900',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [ButtonPaymentWidget()],
          ),
        ],
      ),
    );
  }
}
