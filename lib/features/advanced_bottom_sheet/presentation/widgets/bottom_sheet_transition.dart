import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/data/song.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/presentation/bloc/abs_bloc.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/presentation/bloc/abs_event.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/presentation/bloc/abs_state.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/presentation/widgets/song_item.dart';

class BottomSheetTransition extends StatefulWidget {
  const BottomSheetTransition({super.key});

  @override
  State<BottomSheetTransition> createState() => _BottomSheetTransitionState();
}

class _BottomSheetTransitionState extends State<BottomSheetTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double get maxHeight => MediaQuery.of(context).size.height - 40;
  double songImgShrankSize = 45;
  double songImgExpandedSize = 120;
  double songHorizontalSpace = 15;
  double songVerticalSpace = 25;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 600),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AbsBloc, AbsState>(
      listener: (context, state) {
        print('current state: $state');
      },
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) => Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: _lerp(120, maxHeight),
          child: GestureDetector(
            onTap: () {
              _onToggle();
              context.read<AbsBloc>().add(const OnToggle());
            },
            onVerticalDragUpdate: (details) {
              _onVerticalDragUpdate(details);
              context.read<AbsBloc>().add(const OnVerticalDragUpdate());
            },
            onVerticalDragEnd: (details) {
              _onVerticalDragEnd(details);
              context.read<AbsBloc>().add(const OnVerticalDragEnd());
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff920201),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: _lerp(20, 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Songs',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: _lerp(15, 25),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          _controller.status == AnimationStatus.completed
                              ? Icons.arrow_downward
                              : Icons.arrow_upward,
                          color: Colors.white,
                          size: _lerp(15, 25),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: _lerp(35, 80),
                    bottom: 0,
                    child: SingleChildScrollView(
                      scrollDirection:
                          _controller.status == AnimationStatus.completed
                              ? Axis.vertical
                              : Axis.horizontal,
                      physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      child: SizedBox(
                        height: (songImgExpandedSize + songVerticalSpace) *
                            songs.length,
                        width: (songImgShrankSize + songHorizontalSpace) *
                            songs.length,
                        child: Stack(
                          children: [
                            for (final (index, song) in songs.indexed)
                              SongItem(
                                song: song,
                                imgSize: _lerp(
                                    songImgShrankSize, songImgExpandedSize),
                                topMargin: _getSongItemTop(index),
                                leftMargin: _getSongItemLeft(index),
                                isExpanded: _controller.status ==
                                    AnimationStatus.completed,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onToggle() {
    final bool isCompleted = _controller.status == AnimationStatus.completed;
    _controller.fling(velocity: isCompleted ? -1 : 1);
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    _controller.value -= details.primaryDelta! / maxHeight;
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    if (_controller.isAnimating ||
        _controller.status == AnimationStatus.completed) return;

    final double flingVelocity =
        details.velocity.pixelsPerSecond.dy / maxHeight;

    if (flingVelocity < 0) {
      _controller.fling(
        velocity: math.max(1, -flingVelocity),
      );
    } else if (flingVelocity > 0) {
      _controller.fling(
        velocity: math.min(-1, -flingVelocity),
      );
    } else {
      _controller.fling(
        velocity: _controller.value < 0.5 ? -1 : 1,
      );
    }
  }

  double _getSongItemTop(int index) {
    return _lerp(20, 10 + index * (songVerticalSpace + songImgExpandedSize));
  }

  double _getSongItemLeft(int index) {
    return _lerp(index * (songHorizontalSpace + songImgShrankSize), 0);
  }

  double _lerp(double min, double max) {
    return lerpDouble(min, max, _controller.value) ?? 0.0;
  }
}
