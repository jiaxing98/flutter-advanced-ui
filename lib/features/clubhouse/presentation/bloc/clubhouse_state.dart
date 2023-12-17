import 'package:equatable/equatable.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/data/models/room.dart';

abstract class ClubhouseState extends Equatable {
  const ClubhouseState();

  @override
  List<Object?> get props => [];
}

class ClubhouseLoading extends ClubhouseState {
  const ClubhouseLoading();
}

class ClubhouseLoaded extends ClubhouseState {
  const ClubhouseLoaded();
}

class RoomPageOpened extends ClubhouseState {
  final Room room;
  const RoomPageOpened({required this.room});
}
