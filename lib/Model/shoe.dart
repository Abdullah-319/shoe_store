import 'dart:ui';

class Shoe {
  final int id;
  final String title;
  final String description;
  final double price;
  final Color color;
  final int size;
  bool liked;

  Shoe({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.color,
    required this.size,
    required this.liked,
  });

  static double getTotalPrice(List<Shoe> shoes) {
    double total = 0;

    for (var shoe in shoes) {
      total += shoe.price;
    }

    return total;
  }

  factory Shoe.fromJson(Map<String, dynamic> json) => Shoe(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        color: json["color"],
        size: json["size"],
        liked: json["liked"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "color": color,
        "size": size,
        "liked": liked,
      };
}
