// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BestSellerImage extends StatelessWidget {
  final String image;
  const BestSellerImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 10,left: 10,),
      margin: const EdgeInsets.only(left: 6),
      height: size.height * 0.3,
      width: size.width * 0.93,
      child: Image.asset(image,fit: BoxFit.fill,),
    );
  }
}
