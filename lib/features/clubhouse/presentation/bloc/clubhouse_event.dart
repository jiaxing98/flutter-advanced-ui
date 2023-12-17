import 'package:equatable/equatable.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/data/models/room.dart';

abstract class ClubhouseEvent extends Equatable {
  const ClubhouseEvent();

  @override
  List<Object?> get props => [];
}

class OnRoomContainerClicked extends ClubhouseEvent {
  final Room room;

  const OnRoomContainerClicked({required this.room});

  @override
  List<Object?> get props => [room];
}

class OnRoomPageClosed extends ClubhouseEvent {
  const OnRoomPageClosed();
}
