import 'package:cartpayment_test/constants/colors.dart';
import 'package:flutter/material.dart';

class ButtonPaymentWidget extends StatefulWidget {
  const ButtonPaymentWidget({super.key});

  @override
  State<ButtonPaymentWidget> createState() => _ButtonPaymentWidget();
}

class _ButtonPaymentWidget extends State<ButtonPaymentWidget> {
  @override
  Widget build(BuildContext context) {
    void onPressedPayment() {
      setState(() {
        print('Payment');
      });
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
           width: MediaQuery.of(context).size.width * 0.9,
        child: ElevatedButton(
          onPressed: onPressedPayment,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(ElevatedButtonIcon),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
          ),
          child: const Text(
            "Mark Payment",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
