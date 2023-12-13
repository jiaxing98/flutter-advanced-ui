import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/presentation/bloc/abs_event.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/presentation/bloc/abs_state.dart';

class AbsBloc extends Bloc<AbsEvent, AbsState> {
  AbsBloc() : super(const BottomSheetShrank()) {
    on<OnToggle>(_onToggle);
    on<OnVerticalDragUpdate>(_onVerticalDragUpdate);
    on<OnVerticalDragEnd>(_onVerticalDragEnd);
  }

  void _onToggle(OnToggle event, Emitter<AbsState> emit) {
    print('on toggle!');
    _emitEvent(emit);
  }

  void _onVerticalDragUpdate(
      OnVerticalDragUpdate event, Emitter<AbsState> emit) {
    print('dragging!');
  }

  void _onVerticalDragEnd(OnVerticalDragEnd event, Emitter<AbsState> emit) {
    print('drag end!');
    _emitEvent(emit);
  }

  void _emitEvent(Emitter<AbsState> emit) {
    if (state is BottomSheetShrank) {
      print('Expand now!');
      emit(const BottomSheetExpanded());
    } else {
      print('Shrink now!');
      emit(const BottomSheetShrank());
    }
  }
}
