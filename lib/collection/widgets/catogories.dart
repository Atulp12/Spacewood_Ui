import 'package:flutter/material.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Beds",
    "Wardrobes",
    "Dressing Table",
    "Bedside Table",
    "Bedroom Set",
    "Chest of Drawer",
  ];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                // fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
                color: selectedIndex == index ? Colors.amber : Colors.grey,
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(top: 10 / 4), //top padding 5
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.amber : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
