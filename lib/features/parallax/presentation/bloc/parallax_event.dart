import 'package:equatable/equatable.dart';

abstract class ParallaxEvent extends Equatable {
  const ParallaxEvent();

  @override
  List<Object?> get props => [];
}

class OnPaintingLoading extends ParallaxEvent {
  const OnPaintingLoading();
}

class OnScrollingPainting extends ParallaxEvent {
  final double? pageOffset;

  const OnScrollingPainting({this.pageOffset = 0});

  @override
  List<Object?> get props => [pageOffset];
}
