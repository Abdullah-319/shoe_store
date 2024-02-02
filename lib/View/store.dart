import 'package:flutter/material.dart';
import 'package:shoe_store/View/cart.dart';
import 'package:shoe_store/Widgets/main_page.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

int selectedIndex = 0;

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    Widget body = const MainPage();

    if (selectedIndex == 0) {
      body = const MainPage();
    } else if (selectedIndex == 1) {
      body = Container(color: Colors.grey);
    } else if (selectedIndex == 2) {
      body = const Cart();
    } else if (selectedIndex == 3) {
      body = Container(color: Colors.blue);
    }

    return Scaffold(
      body: SafeArea(
        child: body,
      ),
      bottomNavigationBar: BottomNavigationBar(
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
                color:
                    selectedIndex == 0 ? Colors.deepOrange : Colors.transparent,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Icon(
                Icons.house_outlined,
                color: selectedIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color:
                    selectedIndex == 1 ? Colors.deepOrange : Colors.transparent,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Icon(
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
                color:
                    selectedIndex == 2 ? Colors.deepOrange : Colors.transparent,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: selectedIndex == 2 ? Colors.white : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color:
                    selectedIndex == 3 ? Colors.deepOrange : Colors.transparent,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Icon(
                Icons.favorite,
                color: selectedIndex == 3 ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
