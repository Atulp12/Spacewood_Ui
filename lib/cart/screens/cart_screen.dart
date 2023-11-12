import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:spacewood_app/cart/widgets/cart_product.dart';
import 'package:spacewood_app/cart/widgets/subtotal.dart';
import 'package:spacewood_app/common/custom_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.1),
        child: Container(
          height: size.height * 0.1,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: size.height * 0.6,
                width: size.width * 0.6,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              IconButton(
                padding: const EdgeInsets.only(bottom: 2),
                onPressed: () {},
                icon: const Icon(
                  Ionicons.notifications_outline,
                  color: Colors.black,
                  size: 26,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'CART',
              style: TextStyle(
                  fontSize: 21,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w100),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 30,
            height: 3,
            margin: const EdgeInsets.only(left: 16),
            decoration: const BoxDecoration(color: Colors.amber),
          ),
          const SizedBox(
            height: 10,
          ),
          const CartSubtotal(),
          const CustomButton(isPass: false),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black12.withOpacity(0.08),
            height: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          const CartProduct(),
        ],
      ),
    );
  }
}
