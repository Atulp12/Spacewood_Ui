import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:spacewood_app/collection/screens/bedroom.dart';
import 'package:spacewood_app/collection/widgets/collection_card.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BedroomCollection()));
              },
              child: const CollectionCard(
                title: 'Bedroom',
                image: 'assets/images/Bedroom.jpg',
              ),
            ),
            const CollectionCard(
              title: 'Living Room',
              image: 'assets/images/Livingroom.jpg',
            ),
            const CollectionCard(
              title: 'Utilities',
              image: 'assets/images/utility.jpg',
            ),
            const CollectionCard(
              title: 'Office Furniture',
              image: 'assets/images/office.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
