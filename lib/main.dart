import 'package:flutter/material.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/pages/clubhouse_home_page.dart';
import 'package:flutter_ui_tutorial/features/liquid_swipe/presentation/pages/onboarding_page.dart';
import 'package:flutter_ui_tutorial/injection_container.dart';

void main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnBoardingPage(),
    );
  }
}
