import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      // margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.3,
            width: size.width * 0.91,
            child: Image.asset('assets/images/P323202213729.jpg',fit: BoxFit.fill,),
          ),
          Container(
            height: size.height * 0.14,
            width: size.width * 0.91,
            decoration: BoxDecoration(color: Colors.grey.shade300,),
            child: Image.asset('assets/images/P8242021122049.png'),
          ),
          const SizedBox(
              height: 15,
            ),
            const Text(
              'SPACEWOOD BEDROOMS',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Unmatched Comfort',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  color: Colors.blue.shade400),
            ),
            const Text(
              'Spacewood Beds are the perfect balance of design and functionality, with over 25 Designs to choose from and multiple storage options are available.',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
              ),
            ),
        ],
      ),
    );
  }
}
