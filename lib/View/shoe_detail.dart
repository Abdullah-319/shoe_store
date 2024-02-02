import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_store/Data/data.dart';
import 'package:shoe_store/Model/shoe.dart';
import 'package:shoe_store/Widgets/category_tile.dart';
import 'package:shoe_store/Widgets/color_tile.dart';
import 'package:shoe_store/Widgets/size_tile.dart';

class ShoeDetail extends StatefulWidget {
  const ShoeDetail({super.key, required this.shoe});

  final Shoe shoe;

  @override
  State<ShoeDetail> createState() => _ShoeDetailState();
}

IconData likeIcon = Icons.favorite_border;

class _ShoeDetailState extends State<ShoeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (favShoes.where((element) => element.id == widget.shoe.id).toList().isEmpty) {
                    favShoes.add(widget.shoe);
                  } else {
                    favShoes.remove(widget.shoe);
                  }
                });
              },
              child:  Icon(
                favShoes
                    .where((element) => element.id == widget.shoe.id)
                    .toList()
                    .isEmpty?Icons.favorite_border:Icons.favorite,
                size: 26,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Hero(
                      tag: widget.shoe.id,
                      child: Image.asset(
                        "assets/images/shoe.png",
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: CategoryTile(
                          showText: false, icon: FontAwesomeIcons.shoePrints),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Text(
                        "   Pick your ❤   ",
                        style: GoogleFonts.poppins(),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.shoe.title,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$",
                            style: GoogleFonts.poppins(
                              color: Colors.redAccent,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 3),
                          Text(
                            widget.shoe.price.toString(),
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.star, color: Colors.deepOrange, size: 12),
                          Icon(Icons.star, color: Colors.deepOrange, size: 12),
                          Icon(Icons.star, color: Colors.deepOrange, size: 12),
                          Icon(Icons.star, color: Colors.deepOrange, size: 12),
                          Icon(Icons.star, color: Colors.deepOrange, size: 12),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: Text("Available Sizes",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
              ),
              const SizedBox(height: 10),
              const SizeTile(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: Text("Color",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
              ),
              const SizedBox(height: 10),
              const ColorTile(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: Text("Description",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500)),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  shoes[0].description,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(1000),
          ),
          child: const Icon(
            Icons.add_shopping_cart_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
