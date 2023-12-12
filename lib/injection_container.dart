import 'package:flutter_ui_tutorial/features/parallax/presentation/bloc/parallax_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Bloc
  sl.registerSingleton(ParallaxBloc());
}
