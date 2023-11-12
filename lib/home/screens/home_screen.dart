import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:spacewood_app/home/widgets/best_seller.dart';
import 'package:spacewood_app/home/widgets/container1.dart';
import 'package:spacewood_app/home/widgets/crousel_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey _scaffoldKey =  GlobalKey();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(size.height * 0.1),
        child: Container(
          height: size.height * 0.1,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: size.height * 0.6,
                width: size.width * 0.6,
                child: Image.asset('assets/images/logo.png',fit: BoxFit.fitWidth,),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.6,
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1.2),
                        borderRadius: BorderRadius.circular(1)),
                    child: const TextField(
                        decoration: InputDecoration(
                            hintText: 'Search for..',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                            contentPadding: EdgeInsets.only(bottom: 13))),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Ionicons.search),
                  ),
                  const SizedBox(width: 2,),
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    width: size.width * 0.18,
                    height: size.height * 0.06,
                    child: Image.asset('assets/images/gift.png'),
                  ),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: const CircleAvatar(
                  //     backgroundImage: AssetImage('assets/images/01.png'),
                  //     backgroundColor: Colors.white,
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 5,
                  // ),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: const CircleAvatar(
                  //     backgroundImage: AssetImage('assets/images/2.png'),
                  //     backgroundColor: Colors.white,
                  //   ),
                  // ),
                  // const SizedBox(
                  //   width: 5,
                  // ),
                  // Badge.Badge(
                  // badgeContent:  const Text('0',style: TextStyle(color: Colors.white),),
                  // badgeStyle: Badge.BadgeStyle(badgeColor: Colors.amber.shade800),
                  // child: GestureDetector(
                  //   onTap: (){},
                  //   child: const CircleAvatar(
                  //     backgroundImage: AssetImage('assets/images/3.png'),
                  //     backgroundColor: Colors.white,
                  //   ),
                  // ),),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CarouselImage(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'COLLECTIONS',
                style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w100),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 90,
              height: 3,
              margin: const EdgeInsets.only(left: 16),
              decoration: const BoxDecoration(color: Colors.amber),
            ),
            const SizedBox(
              height: 10,
            ),
            const Container1(),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'MOST POPULAR/ BESTSELLERS',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w100),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 90,
              height: 3,
              margin: const EdgeInsets.only(left: 16),
              decoration: const BoxDecoration(color: Colors.amber),
            ),
            const BestSellerImage(image: 'assets/images/P672023122746.jpg'),
            const BestSellerImage(image: 'assets/images/P682023102811.jpg'),
            const BestSellerImage(image: 'assets/images/P682023103055.jpg'),
            const BestSellerImage(image: 'assets/images/P682023103232.jpg'),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

}
