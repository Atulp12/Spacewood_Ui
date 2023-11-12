// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomButton extends StatelessWidget {
  final bool isPass;
  const CustomButton({
    Key? key,
    required this.isPass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: isPass ? Colors.amber : Colors.orange,
              minimumSize:  Size(size.width * 0.90, 50),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children:  [
                isPass ? const Padding(
                  padding: EdgeInsets.only(bottom: 3),
                  child: Icon(
                   Ionicons.cart_outline,
                    size: 24.0,
                  ),
                ) : const Padding(
                  padding: EdgeInsets.only(bottom: 3),
                  child: Icon(
                    Ionicons.bag_outline,
                    size: 24.0,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                isPass ? const Text('ADD TO CART',style: TextStyle(fontFamily: 'Poppins'),) : const Text('BUY NOW',style: TextStyle(fontFamily: 'Poppins')),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
