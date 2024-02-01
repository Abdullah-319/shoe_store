import 'dart:ui';

class Shoe {
  final int id;
  final String title;
  final String description;
  final double price;
  final Color color;
  final int size;
  bool liked;

  Shoe( {
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.color,
    required this.size,
    required this.liked,
  });
}
