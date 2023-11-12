import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CarouselImage extends StatefulWidget {
  const CarouselImage({super.key});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  int currIndex = 0;
  List<String> carouselImages = [
    'assets/images/P5202023125644.jpg',
    'assets/images/P520202310229.jpg',
    'assets/images/P517202322434.jpg',
    'assets/images/P517202322409.jpg',
    'assets/images/P5202023125227.jpeg',
    'assets/images/P5192023110825.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        CarouselSlider(
          items: carouselImages.map((i) {
            return Builder(
                builder: (context) => Image.asset(
                      i,
                      fit: BoxFit.cover,
                      height: size.height * 0.25,
                    ));
          }).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            height: size.height * 0.25,
            autoPlay: true,
            autoPlayCurve: Curves.linear,
            autoPlayInterval: const Duration(seconds: 2),
            onPageChanged: (index, reason) {
              setState(() {
                currIndex = index;
              });
              // print(currIndex);
            },
          ),
        ),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          child: DotsIndicator(
            dotsCount: carouselImages.length,
            position: currIndex,
            decorator: const DotsDecorator(
              activeColor: Colors.white,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
