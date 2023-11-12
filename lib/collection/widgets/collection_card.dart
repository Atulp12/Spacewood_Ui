import 'package:flutter/material.dart';

class CollectionCard extends StatelessWidget {
  final String title;
  final String image;
  const CollectionCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height* 0.3,
      width: size.width * 1,
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: size.height * 0.3,
          width: size.width* 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:  DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: size.height * 0.1,
              decoration: const BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      title,
                      style:const TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    const Icon(Icons.arrow_forward_ios,color: Colors.white,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
