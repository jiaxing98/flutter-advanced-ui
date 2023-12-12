import 'package:equatable/equatable.dart';

abstract class ParallaxState extends Equatable {
  const ParallaxState();

  @override
  List<Object?> get props => [];
}

class PaintingLoading extends ParallaxState {
  const PaintingLoading();
}

class PaintingLoaded extends ParallaxState {
  final double pageOffset;

  const PaintingLoaded({this.pageOffset = 0});

  @override
  List<Object?> get props => [pageOffset];
}
