import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/data/data.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_bloc.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/widgets/home_page_title.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/widgets/room_container.dart';
import 'package:flutter_ui_tutorial/injection_container.dart';

class ClubhouseHomePage extends StatelessWidget {
  const ClubhouseHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClubhouseBloc>(
      create: (_) => sl(),
      child: Scaffold(
        backgroundColor: kClubhouseColor,
        appBar: AppBar(
          backgroundColor: kClubhouseColor,
          elevation: 0,
          title: const HomePageTitle(),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: rooms.length,
                  itemBuilder: (context, index) =>
                      RoomContainer(room: rooms[index]),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
            Positioned(
              left: 15,
              right: 15,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: kClubhouseColor.withOpacity(0.8),
                      blurRadius: 1,
                      offset: const Offset(0, 25),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 45,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green[600],
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Text(
                                'Start a room',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        const Icon(
                          Icons.view_list,
                          size: 45,
                        ),
                        Positioned(
                          right: 0,
                          bottom: 5,
                          child: Icon(
                            Icons.circle,
                            size: 20,
                            color: Colors.green[600],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
