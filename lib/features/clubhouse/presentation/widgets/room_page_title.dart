import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/constants/images.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_bloc.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_event.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_state.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/widgets/image_container.dart';

class RoomPageTitle extends StatelessWidget {
  const RoomPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ClubhouseBloc, ClubhouseState>(
      listener: (_, state) {
        if (state is ClubhouseLoaded) {
          Navigator.pop(context);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                context.read<ClubhouseBloc>().add(const OnRoomPageClosed());
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 40,
                  ),
                  Text(
                    'All rooms',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.insert_drive_file_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                SizedBox(
                  width: 30,
                ),
                ImageContainer(
                  height: 35,
                  width: 35,
                  image: kClubhouseC1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
