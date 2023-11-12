import 'package:badges/badges.dart' as Badge;
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:spacewood_app/cart/screens/cart_screen.dart';
import 'package:spacewood_app/collection/screens/collections_screen.dart';
import 'package:spacewood_app/home/screens/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          CollectionScreen(),
          Center(child: Text('Favorites')),
          CartScreen(),
          Center(child: Text('Account'))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.home_outline,
              color: _page == 0 ? Colors.amber : Colors.grey,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.albums_outline,
                color: _page == 1 ? Colors.amber : Colors.grey),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.heart_outline,
                color: _page == 2 ? Colors.amber : Colors.grey),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Badge.Badge(
               badgeContent:  const Text('0',style: TextStyle(color: Colors.white),),
              badgeStyle: Badge.BadgeStyle(badgeColor: Colors.amber.shade800),
              child: Icon(Ionicons.cart_outline,
                  color: _page == 3 ? Colors.amber : Colors.grey),
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_circle_outline,
                color: _page == 4 ? Colors.amber : Colors.grey),
            label: '',
            backgroundColor: Colors.white,
          ),
        ],
        onTap: navigationTapped,
      ),
    );
  }
}
