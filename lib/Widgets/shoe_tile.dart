import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe_store/Data/data.dart';
import 'package:shoe_store/Model/shoe.dart';
import 'package:shoe_store/View/shoe_detail.dart';

class ShoeTile extends StatefulWidget {
  const ShoeTile({super.key});

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

IconData likeIcon = Icons.favorite_border;

class _ShoeTileState extends State<ShoeTile> {
  late SharedPreferences sp;

  getSharedPreferences() async {
    sp = await SharedPreferences.getInstance();
    readFromSp();
  }

  saveIntoSp() {
    List<String> favList =
        favShoes.map((shoe) => jsonEncode(shoe.toJson())).toList();
    sp.setStringList("Data", favList);
  }

  readFromSp() {
    List<String>? favList = sp.getStringList("Data");

    favShoes =
        favList!.map((shoe) => Shoe.fromJson(json.decode(shoe))).toList();

    setState(() {});
  }

  @override
  void initState() {
    getSharedPreferences();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 284,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: shoes.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.only(left: 30),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 250, minHeight: 250, maxWidth: 180, minWidth: 180),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          if (favShoes
                              .where((element) => element.id == shoes[index].id)
                              .toList()
                              .isEmpty) {
                            favShoes.add(shoes[index]);
                            saveIntoSp();
                          } else {
                            favShoes.remove(shoes[index]);
                            saveIntoSp();
                          }
                          // shoes[index].liked = !(shoes[index].liked);
                        });
                      },
                      child: Icon(
                        favShoes
                                .where(
                                    (element) => element.id == shoes[index].id)
                                .toList()
                                .isEmpty
                            ? Icons.favorite_border
                            : Icons.favorite,
                        color: Colors.grey,
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return ShoeDetail(
                          shoe: shoes[index],
                        );
                      })).then((value) => setState(() {}));
                    },
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Hero(
                        tag: shoes[index].id,
                        child: Image.asset(
                          "assets/images/shoe.png",
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          shoes[index].title,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Trending Now",
                          style: GoogleFonts.poppins(
                            color: Colors.redAccent,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$",
                              style: GoogleFonts.poppins(
                                color: Colors.redAccent,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              shoes[index].price.toString(),
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
