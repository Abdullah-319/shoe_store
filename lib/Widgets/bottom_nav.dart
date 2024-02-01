import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

int selectedIndex = 0;

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(

            label: "Home",
            icon: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: selectedIndex == 0 ? Colors.deepOrange : Colors.transparent,
                borderRadius: BorderRadius.circular(1000),
              ),
              child:  Icon(
                Icons.house_outlined,
                color: selectedIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
          ),
           BottomNavigationBarItem(
            label: "Search",
            icon:  Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: selectedIndex == 1 ? Colors.deepOrange : Colors.transparent,
                borderRadius: BorderRadius.circular(1000),
              ),
              child:  Icon(
                Icons.search,
                color: selectedIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
          ),
           BottomNavigationBarItem(
            label: "Cart",
            icon: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: selectedIndex == 2 ? Colors.deepOrange : Colors.transparent,
                borderRadius: BorderRadius.circular(1000),
              ),
              child:  Icon(
                Icons.shopping_cart_outlined,
                color: selectedIndex == 2 ? Colors.white : Colors.grey,
              ),
            ),
          ),
           BottomNavigationBarItem(
            label: "Favs",
            icon:  Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: selectedIndex == 3 ? Colors.deepOrange : Colors.transparent,
                borderRadius: BorderRadius.circular(1000),
              ),
              child:  Icon(
                Icons.favorite,
                color: selectedIndex == 3 ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ],
      );
  }
}