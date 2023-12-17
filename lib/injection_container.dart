import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/presentation/bloc/abs_bloc.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_bloc.dart';
import 'package:flutter_ui_tutorial/features/parallax/presentation/bloc/parallax_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Bloc
  sl.registerSingleton(ParallaxBloc());
  sl.registerSingleton(AbsBloc());
  sl.registerSingleton(ClubhouseBloc());
}
