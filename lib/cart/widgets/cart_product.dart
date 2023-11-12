import 'package:flutter/material.dart';

class CartProduct extends StatefulWidget {

  const CartProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<CartProduct> createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 1,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/bed1.jpg',
                  fit: BoxFit.cover,
                  height: 135,
                  width: 135,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: const Text(
                          "KOSMO WOODLAND FLORA QUEEN BED 3 4 HYDRAULIC STORAGE BED SHEESHAM",
                          overflow: TextOverflow.ellipsis,
                          style:  TextStyle(fontSize: 16,fontFamily: 'Poppins'),
                          maxLines: 2,
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child:const  Text(
                          "Rs.20000",
                          style:  TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                          maxLines: 2,
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: const Text("FREE Shipping",style: TextStyle(fontFamily: 'Poppins',color: Colors.orange),),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: const Text(
                          "In Stock",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black12,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          width: 35,
                          height: 32,
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.remove,
                            size: 18,
                          ),
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white,
                        ),
                        child: Container(
                          width: 35,
                          height: 32,
                          alignment: Alignment.center,
                          child: const Text('1'),
                        ),
                      ),
                      InkWell(
                        onTap: () => {},
                        child: Container(
                          width: 35,
                          height: 32,
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.add,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
