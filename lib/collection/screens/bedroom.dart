import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:spacewood_app/collection/widgets/catogories.dart';
import 'package:spacewood_app/collection/widgets/item_card.dart';

class BedroomCollection extends StatelessWidget {
  const BedroomCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Ionicons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.cart_outline,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 10, bottom: 10, top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Bedroom',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Ionicons.filter))
                ],
              ),
            ),
            const Categories(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.59,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => const ItemCard()),
              ),
            ),
          ],
        ));
  }
}
