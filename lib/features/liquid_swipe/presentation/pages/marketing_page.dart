import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class MarketingPage extends StatelessWidget {
  final String title;
  final String image;
  final int color;

  const MarketingPage({
    super.key,
    required this.title,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(color),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  lorem(paragraphs: 1, words: 20),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonTheme(
                  height: 50,
                  minWidth: 150,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      side: const MaterialStatePropertyAll<BorderSide>(
                        BorderSide(color: Colors.white),
                      ),
                      textStyle: const MaterialStatePropertyAll<TextStyle>(
                        TextStyle(color: Colors.white),
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Skip',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
