import 'package:flutter/material.dart';

class CartSubtotal extends StatelessWidget {
  const CartSubtotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Row(
        children: const [
          Text(
            "Subtotal  ",
            style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
          ),
          Text(
            'Rs.20000',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          )
        ],
      ),
    );
  }
}
