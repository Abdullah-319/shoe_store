import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_store/Data/data.dart';

class CategoryTile extends StatefulWidget {
  const CategoryTile({super.key});

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

String selected = "Sneakers";

class _CategoryTileState extends State<CategoryTile> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: double.infinity,
        minWidth: double.infinity,
        maxHeight: 55,
        minHeight: 55,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = categories[index];
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 5, right: 10),
                decoration: BoxDecoration(
                  border: selected == categories[index]
                      ? Border.all(
                          color: Colors.deepOrange,
                        )
                      : null,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    const  SizedBox(
                      width: 35,
                      height: 35,
                      child: Image(
                        image: AssetImage("assets/images/shoe3.png" ),
                        
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    Text(
                      categories[index],
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
