import 'package:flutter/material.dart';
import 'package:shoe_store/Model/shoe.dart';

final List<String> categories = [
  "Sneakers",
  "Watch",
  "Jackets",
];

final List<Shoe> shoes = [
  Shoe(
    id: 1,
    title: "NIKE AIR MAX 200",
    description:
        "Introducing the latest Nike shoe pair, a fusion of cutting-edge design and unparalleled comfort. This iconic footwear seamlessly merges style and functionality, boasting a sleek silhouette and premium materials. Whether you're navigating city streets or hitting the gym, these Nike shoes offer a perfect balance of fashion and performance. The carefully curated color palette adds a touch of sophistication, making them a versatile choice for any occasion. With a cushioned insole providing optimal support and a traction-enhanced outsole, these Nike shoes redefine footwear excellence. Step into a world where Nike innovation meets timeless style, and every stride radiates confidence.",
    price: 240.0,
    color: Colors.black,
    size: 8,
    liked: false,
  ),
  Shoe(
    id: 2,
    title: "NIKE AIR BLUE 150",
    description:
        "Introducing the latest Nike shoe pair, a fusion of cutting-edge design and unparalleled comfort. This iconic footwear seamlessly merges style and functionality, boasting a sleek silhouette and premium materials. Whether you're navigating city streets or hitting the gym, these Nike shoes offer a perfect balance of fashion and performance. The carefully curated color palette adds a touch of sophistication, making them a versatile choice for any occasion. With a cushioned insole providing optimal support and a traction-enhanced outsole, these Nike shoes redefine footwear excellence. Step into a world where Nike innovation meets timeless style, and every stride radiates confidence.",
    price: 200.0,
    color: Colors.blue,
    size: 7,
    liked: false,
  ),
  Shoe(
    id: 3,
    title: "NIKE AIR PINK 100",
    description:
        "Introducing the latest Nike shoe pair, a fusion of cutting-edge design and unparalleled comfort. This iconic footwear seamlessly merges style and functionality, boasting a sleek silhouette and premium materials. Whether you're navigating city streets or hitting the gym, these Nike shoes offer a perfect balance of fashion and performance. The carefully curated color palette adds a touch of sophistication, making them a versatile choice for any occasion. With a cushioned insole providing optimal support and a traction-enhanced outsole, these Nike shoes redefine footwear excellence. Step into a world where Nike innovation meets timeless style, and every stride radiates confidence.",
    price: 180.5,
    color: Colors.pink,
    size: 6,
    liked: false,
  ),
];

final List<int> sizes = [5, 6, 7, 8, 9];

final List<Color> colors = [
  Colors.redAccent,
  Colors.blueAccent,
  Colors.black,
  Colors.purple,
  Colors.pink,
  Colors.cyan,
];

List<Shoe> favShoes = [];
