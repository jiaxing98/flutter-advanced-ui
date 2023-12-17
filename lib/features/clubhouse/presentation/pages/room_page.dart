import 'package:flutter/material.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/data/data.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/data/models/room.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/widgets/member_grid_view.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/widgets/room_page_bottom_menu.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/widgets/room_page_title.dart';

class RoomPage extends StatelessWidget {
  final Room room;

  const RoomPage({
    super.key,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kClubhouseColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const RoomPageTitle(),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                room.name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MemberGridView.speakers(members: room.speakers),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Others in the room',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MemberGridView.audience(members: room.audience),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const RoomPageBottomMenu(),
          ],
        ),
      ),
    );
  }
}
