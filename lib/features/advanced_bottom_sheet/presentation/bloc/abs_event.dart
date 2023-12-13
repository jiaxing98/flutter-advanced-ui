import 'package:equatable/equatable.dart';

abstract class AbsEvent extends Equatable {
  const AbsEvent();

  @override
  List<Object?> get props => [];
}

class OnToggle extends AbsEvent {
  const OnToggle();
}

class OnVerticalDragUpdate extends AbsEvent {
  const OnVerticalDragUpdate();
}

class OnVerticalDragEnd extends AbsEvent {
  const OnVerticalDragEnd();
}
