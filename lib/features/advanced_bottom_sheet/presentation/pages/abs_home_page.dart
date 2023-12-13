import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/constants/images.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/presentation/bloc/abs_bloc.dart';
import 'package:flutter_ui_tutorial/features/advanced_bottom_sheet/presentation/widgets/bottom_sheet_transition.dart';
import 'package:flutter_ui_tutorial/injection_container.dart';

class AbsHomePage extends StatelessWidget {
  const AbsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return BlocProvider<AbsBloc>(
      create: (_) => sl(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          width: screenWidth,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: screenWidth,
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(kAbsWegz),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              const BottomSheetTransition(),
            ],
          ),
        ),
      ),
    );
  }
}
