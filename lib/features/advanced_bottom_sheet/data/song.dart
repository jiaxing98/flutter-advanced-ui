import 'package:flutter_ui_tutorial/constants/images.dart';

class Song {
  final String image;
  final String title;
  final String year;

  Song(this.image, this.title, this.year);
}

final List<Song> songs = [
  Song(kAbsAsyadElSout, 'Asyad El Sout', '2021'),
  Song(kAbsMshFair, 'Msh Fair', '2021'),
  Song(kAbsHustla, 'Hustla', '2020'),
  Song(kAbsDorkGai, 'Dork Gai', '2019'),
  Song(kAbs21, 'Wa7d W 3shreen', '2020'),
  Song(kAbsSkerty, 'Skerty', '2019'),
  Song(kAbsBelSalama, 'Bel Salama', '2020'),
  Song(kAbsLaqtta, 'Laqtta', '2019'),
  Song(kAbsAlibaba, 'Ali Baba', '2020'),
];
