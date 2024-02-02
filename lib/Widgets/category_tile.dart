import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_store/Data/data.dart';

// ignore: must_be_immutable
class CategoryTile extends StatefulWidget {
  CategoryTile({super.key, required this.showText, this.icon});

  final bool showText;

  IconData? icon;

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
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: widget.icon == null
                          ? Image(
                              image: AssetImage(
                                  "assets/images/category$index.png"),
                              filterQuality: FilterQuality.high,
                            )
                          : Icon(
                              widget.icon,
                              color: Colors.grey.shade400,
                            ),
                    ),
                    const SizedBox(width: 5),
                    widget.showText
                        ? Text(
                            categories[index],
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Container(),
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
