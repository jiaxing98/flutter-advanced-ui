import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/data/models/member.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/data/models/room.dart';

const Color kClubhouseColor = Color(0xfff1efe4);

final List<Member> available = [
  Member(
    name: 'Do',
    profilePicture: 'assets/images/clubhouse/c1.jpg',
  ),
  Member(
    name: 'John',
    profilePicture: 'assets/images/clubhouse/c2.jpg',
  ),
  Member(
    name: 'Sara',
    profilePicture: 'assets/images/clubhouse/c4.jpeg',
  ),
  Member(
    name: 'Tyler',
    profilePicture: 'assets/images/clubhouse/c5.jpeg',
  ),
  Member(
    name: 'Rob',
    profilePicture: 'assets/images/clubhouse/c1.jpg',
  ),
  Member(
    name: 'Kal',
    profilePicture: 'assets/images/clubhouse/c5.jpeg',
  ),
  Member(
    name: 'Ade',
    profilePicture: 'assets/images/clubhouse/c4.jpeg',
  ),
  Member(
    name: 'Minh',
    profilePicture: 'assets/images/clubhouse/c2.jpg',
  ),
];

final List<Room> rooms = [
  Room(
    name: 'Joe Rogan, Elon Musk & Vladimir Putin',
    speakers: [
      Member(
        name: 'Joe Rogan',
        profilePicture: 'assets/images/clubhouse/joe.webp',
      ),
      Member(
        name: 'Elon Musk',
        profilePicture: 'assets/images/clubhouse/elon.jpg',
      ),
      Member(
        name: 'Vladimir Putin',
        profilePicture: 'assets/images/clubhouse/putin.jpeg',
      ),
    ],
    audience: [
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Kal',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Ade',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Minh',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Do',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Kal',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Ade',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Minh',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Do',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Kal',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Ade',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Minh',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Do',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Kal',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Ade',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Minh',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Do',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
    ],
  ),
  Room(
    name: 'Personal Brand',
    speakers: [
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
    ],
    audience: [
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Kal',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Ade',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Minh',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Do',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
    ],
  ),
  Room(
    name: 'Photographers',
    speakers: [
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
    ],
    audience: [
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Kal',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Ade',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Minh',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Do',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
    ],
  ),
  Room(
    name: 'Personal Brand',
    speakers: [
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
    ],
    audience: [
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Kal',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Ade',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Minh',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Do',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
    ],
  ),
  Room(
    name: 'Photographers',
    speakers: [
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
    ],
    audience: [
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Kal',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Ade',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Minh',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Do',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
    ],
  ),
  Room(
    name: 'Photographers',
    speakers: [
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
    ],
    audience: [
      Member(
        name: 'Rob',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
      Member(
        name: 'John',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Sara',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Tyler',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Kal',
        profilePicture: 'assets/images/clubhouse/c5.jpeg',
      ),
      Member(
        name: 'Ade',
        profilePicture: 'assets/images/clubhouse/c4.jpeg',
      ),
      Member(
        name: 'Minh',
        profilePicture: 'assets/images/clubhouse/c2.jpg',
      ),
      Member(
        name: 'Do',
        profilePicture: 'assets/images/clubhouse/c1.jpg',
      ),
    ],
  ),
];
