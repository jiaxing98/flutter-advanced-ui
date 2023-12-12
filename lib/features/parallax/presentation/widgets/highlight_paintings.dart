import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/bloc/parallax_bloc.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/bloc/parallax_event.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/bloc/parallax_state.dart';

class HighlightPaintings extends StatelessWidget {
  final List<Map> paintings;

  const HighlightPaintings({
    super.key,
    required this.paintings,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(viewportFraction: 0.7);
    pageController.addListener(() {
      context
          .read<ParallaxBloc>()
          .add(OnScrollingPainting(pageOffset: pageController.page));
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0, bottom: 20),
          child: Text(
            'Highlight Paintings',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 400,
          padding: const EdgeInsets.only(bottom: 30),
          child: BlocBuilder<ParallaxBloc, ParallaxState>(
            builder: (_, state) {
              if (state is PaintingLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              } else if (state is PaintingLoaded) {
                return PageView.builder(
                  itemCount: paintings.length,
                  controller: pageController,
                  itemBuilder: (context, i) {
                    return Transform.scale(
                      scale: 1,
                      child: Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                paintings[i]['image'],
                                height: 370,
                                fit: BoxFit.cover,
                                alignment:
                                    Alignment(-state.pageOffset.abs() + i, 0),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              bottom: 20,
                              right: 10,
                              child: Text(
                                paintings[i]['name'],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: Text('Something went wrong.'),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
