import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/constants/images.dart';
import 'package:flutter_ui_tutorial/features/parallax/data/paintings.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/bloc/parallax_bloc.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/bloc/parallax_event.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/widgets/artist_description.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/widgets/highlight_paintings.dart';
import 'package:flutter_ui_tutorial/injection_container.dart';

class ParallaxHomePage extends StatelessWidget {
  const ParallaxHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ParallaxBloc>(
      create: (_) => sl()..add(const OnPaintingLoading()),
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(kParallaxBg),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ArtistDescription(),
              HighlightPaintings(
                paintings: paintings,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
