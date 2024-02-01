import 'package:flutter/material.dart';
import 'package:shoe_store/Data/data.dart';

class ColorTile extends StatefulWidget {
  const ColorTile({super.key});

  @override
  State<ColorTile> createState() => _ColorTileState();
}

int isSelected = 0;

class _ColorTileState extends State<ColorTile> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
          maxHeight: 35,
          minHeight: 35,
          maxWidth: double.infinity,
          minWidth: 35),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  border: isSelected == index
                      ? Border.all(
                          color: Colors.deepOrange,
                          strokeAlign: BorderSide.strokeAlignOutside)
                      : null,
                  color: colors[index],
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: isSelected == index
                    ? const  Icon(
                        Icons.check,
                        color: Colors.white,
                      )
                    : Container(),
              ),
            ),
          );
        },
      ),
    );
  }
}
