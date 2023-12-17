import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final double height;
  final double width;
  final String image;

  const ImageContainer({
    super.key,
    required this.height,
    required this.width,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(height * 0.4),
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.asset(image),
        ),
      ),
    );
  }
}
