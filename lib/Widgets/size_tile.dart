import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_store/Data/data.dart';

class SizeTile extends StatefulWidget {
  const SizeTile({super.key});

  @override
  State<SizeTile> createState() => _SizeTileState();
}

int isSelected = 5;

class _SizeTileState extends State<SizeTile> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
          maxHeight: 50,
          minHeight: 30,
          maxWidth: double.infinity,
          minWidth: 120),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isSelected = sizes[index];
              });
            },
            child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 95,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isSelected == sizes[index] ? Colors.deepOrangeAccent : Colors.white,
                ),
                child: Text(
                  "US ${sizes[index]}",
                  style: GoogleFonts.poppins(
            
                    color: isSelected == sizes[index] ? Colors.white : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )),
          );
        },
      ),
    );
  }
}
