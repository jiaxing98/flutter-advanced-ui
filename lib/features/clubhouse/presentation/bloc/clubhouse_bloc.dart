import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_event.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_state.dart';

class ClubhouseBloc extends Bloc<ClubhouseEvent, ClubhouseState> {
  ClubhouseBloc() : super(const ClubhouseLoading()) {
    on<OnRoomContainerClicked>(_onRoomContainerClicked);
    on<OnRoomPageClosed>(_onRoomPageClosed);
  }

  void _onRoomContainerClicked(
      OnRoomContainerClicked event, Emitter<ClubhouseState> emit) {
    if (state is RoomPageOpened) return;

    emit(RoomPageOpened(room: event.room));
  }

  void _onRoomPageClosed(OnRoomPageClosed event, Emitter<ClubhouseState> emit) {
    if (state is ClubhouseLoaded) return;

    emit(const ClubhouseLoaded());
  }
}
