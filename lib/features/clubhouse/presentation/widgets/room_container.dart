import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/data/models/room.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_bloc.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_event.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/bloc/clubhouse_state.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/pages/room_page.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/widgets/image_container.dart';
import 'package:page_transition/page_transition.dart';

class RoomContainer extends StatelessWidget {
  final Room room;

  const RoomContainer({
    super.key,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<ClubhouseBloc, ClubhouseState>(
      listener: (_, state) {
        if (state is RoomPageOpened && state.room == room) {
          Navigator.push(
            context,
            PageTransition(
              child: BlocProvider.value(
                value: context.read<ClubhouseBloc>(),
                child: RoomPage(room: state.room),
              ),
              type: PageTransitionType.bottomToTop,
            ),
          );
        }
      },
      child: GestureDetector(
        onTap: () {
          context.read<ClubhouseBloc>().add(OnRoomContainerClicked(room: room));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black54.withOpacity(0.3),
                blurRadius: 1,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                room.name,
                style: const TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      const SizedBox(
                        width: 80,
                        height: 100,
                      ),
                      Positioned(
                        right: 0,
                        top: 20,
                        child: ImageContainer(
                          height: 45,
                          width: 45,
                          image: room.speakers[0].profilePicture,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: ImageContainer(
                          height: 45,
                          width: 45,
                          image: room.speakers[1].profilePicture,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: room.speakers.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  room.speakers[index].name,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Icon(
                                  Icons.chat_outlined,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              room.audience.length.toString() + ' ',
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            Text(
                              ' / ' + room.audience.length.toString() + ' ',
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const Icon(
                              Icons.chat,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
