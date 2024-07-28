import 'package:flutter_base_app/config/util/custom_widget.dart';

class Song {
  final String title;
  final String singer;
  final String imagePath;

  Song({required this.title, required this.singer, required this.imagePath});
}

List<Song> dummyListTrending = [
  Song(
      title: "Believer",
      singer: 'Imagine Dragon',
      imagePath: imagePaths('img_trending1')),
  Song(
      title: "Harley's in Hawaii",
      singer: 'Katty Perry',
      imagePath: imagePaths('img_trending2')),
  Song(
      title: "Cheap Trills",
      singer: 'Imagine Dragons',
      imagePath: imagePaths('img_trending3')),
];
List<Song> dummyListPicks = [
  Song(
      title: "Believer",
      singer: 'Imagine Dragon',
      imagePath: imagePaths('img_picks1')),
  Song(
      title: "Harley's in Hawaii",
      singer: 'Katty Perry',
      imagePath: imagePaths('img_picks2')),
  Song(
      title: "Cheap Trills",
      singer: 'Imagine Dragons',
      imagePath: imagePaths('img_picks3')),
];
