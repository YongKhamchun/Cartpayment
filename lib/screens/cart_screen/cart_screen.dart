// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cartpayment_test/constants/colors.dart';
import 'package:cartpayment_test/screens/cart_screen/wigets/order_in_cart_accessories_widget.dart';
import 'package:cartpayment_test/screens/cart_screen/wigets/order_in_cart_device_widget.dart';
import 'package:cartpayment_test/screens/cart_screen/wigets/recommended_product_widget.dart';
import 'package:cartpayment_test/screens/cart_screen/wigets/sum_order_widget.dart';
import 'package:flutter/material.dart';

final List _order = ['order1'];

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppBarColor,
        title: Text('Cart'), 
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_outlined),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _order.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return OrderInCartDevice(child: _order[index]);
                    },
                  ),
                    ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _order.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return OrderInCartAccessory(child: _order[index]);
                    },
                  ),
                  RecommedProduct(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: SumOrder(),
          )
        ],
      ),
    );
  }
}
