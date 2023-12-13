import 'package:equatable/equatable.dart';

abstract class AbsState extends Equatable {
  const AbsState();

  @override
  List<Object?> get props => [];
}

class BottomSheetShrank extends AbsState {
  const BottomSheetShrank();
}

class BottomSheetExpanded extends AbsState {
  const BottomSheetExpanded();
}
