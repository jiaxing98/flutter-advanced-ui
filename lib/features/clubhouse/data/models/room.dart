import 'package:flutter_ui_tutorial/features/clubhouse/data/models/member.dart';

class Room {
  final String name;
  final List<Member> speakers;
  final List<Member> audience;

  Room({
    required this.name,
    required this.speakers,
    required this.audience,
  });
}
