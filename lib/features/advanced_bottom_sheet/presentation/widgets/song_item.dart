import 'package:flutter/material.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/data/song.dart';

class SongItem extends StatelessWidget {
  final Song song;
  final double topMargin;
  final double leftMargin;
  final double imgSize;
  final bool isExpanded;

  const SongItem({
    super.key,
    required this.song,
    required this.topMargin,
    required this.leftMargin,
    required this.imgSize,
    required this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: leftMargin,
      right: 0,
      top: topMargin,
      child: Row(
        children: [
          SizedBox(
            height: imgSize,
            width: imgSize,
            child: Image.asset(
              song.image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: isExpanded
                ? Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song.title,
                          style: const TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          song.year,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
