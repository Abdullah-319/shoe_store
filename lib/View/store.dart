import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_store/Widgets/category_tile.dart';
import 'package:shoe_store/Widgets/shoe_tile.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.bars,
                    size: 18,
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/me.jpg"),
                        filterQuality: FilterQuality.high,
                      ),
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our",
                    style: GoogleFonts.poppins(
                      fontSize: 38,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "Products",
                    style: GoogleFonts.poppins(
                      fontSize: 38,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  cursorHeight: 20,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: const Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 16,
                    ),
                    hintText: "Search Products",
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    suffixIcon: const Icon(
                      FontAwesomeIcons.barsStaggered,
                      size: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: const CategoryTile(),
              ),
              const SizedBox(height: 15),
              const ShoeTile(),
            ],
          ),
        ),
      ),
    );
  }
}
