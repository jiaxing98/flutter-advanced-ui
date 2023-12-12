import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/bloc/parallax_event.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/bloc/parallax_state.dart';

class ParallaxBloc extends Bloc<ParallaxEvent, ParallaxState> {
  ParallaxBloc() : super(const PaintingLoading()) {
    on<OnPaintingLoading>(_onPaintingLoading);
    on<OnScrollingPainting>(_onScrollingPainting);
  }
}

void _onPaintingLoading(
    OnPaintingLoading event, Emitter<ParallaxState> emit) async {
  await Future.delayed(const Duration(seconds: 2));

  emit(
    const PaintingLoaded(),
  );
}

void _onScrollingPainting(
    OnScrollingPainting event, Emitter<ParallaxState> emit) {
  emit(
    PaintingLoaded(pageOffset: event.pageOffset ?? 0),
  );
}
