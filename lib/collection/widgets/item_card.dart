import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:ionicons/ionicons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:spacewood_app/common/custom_button.dart';

import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int _index = 0;

    List<String> _list = [
      "assets/images/Bedroom.jpg",
      "assets/images/bed1.jpg",
      "assets/images/Bedroom.jpg",
      "assets/images/Bedroom.jpg",
    ];

    return GestureDetector(
      onTap: () {
        showModal(context, size, _list, _index);
      },
      child: Container(
        height: 150,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              // padding: const EdgeInsets.all(10),
              height: size.height * 0.24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/Bedroom.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 6, top: 10),
              child: Text(
                'KOSMO WOODLAND FLORA QUEEN BED',
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Rs.36237 '),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(Ionicons.heart_outline))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showModal(
      BuildContext context, Size size, List<String> _list, int _index) {
    return showMaterialModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        context: context,
        builder: (context) => SizedBox(
            height: size.height * 0.85,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Container(
                      width: 60,
                      height: 3,
                      margin: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * 0.98,
                    height: size.height * 0.26,
                    child: PageView.builder(
                      itemCount: _list.length,
                      controller: PageController(viewportFraction: 0.9),
                      onPageChanged: (int index) {
                        setState(() {
                          _index = index;
                        });
                      },
                      itemBuilder: (_, i) {
                        return Transform.scale(
                          scale: i == _index ? 1 : 0.9,
                          child: SizedBox(
                            height: size.height * 0.11,
                            width: size.width * 0.98,
                            child: ZoomOverlay(
                                modalBarrierColor: Colors.black12,
                                minScale: 0.5,
                                maxScale: 3.0,
                                animationCurve: Curves.fastOutSlowIn,
                                twoTouchOnly: true,
                                child: Image.asset(
                                  _list[i],
                                  fit: BoxFit.cover,
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      'KOSMO WOODLAND FLORA QUEEN BED 3 4 HYDRAULIC STORAGE BED SHEESHAM',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Rs.36237  ',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                        Text(
                          'Rs.64739',
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontFamily: 'Poppins'),
                        ),
                        Text(
                          ' (Inclusive of all taxes)',
                          style: TextStyle(fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Save,Rs.28502 (44% Off),Limited Time Offer',
                      style: TextStyle(fontFamily: 'Poppins'),
                    ),
                  ),
                   SizedBox(
                    height: size.height * 0.23,
                    child: const Center(
                      child: Text('Details'),
                    ),
                  ),
                  const CustomButton(isPass: false),
                  const CustomButton(isPass: true),
                ])));
  }
}
