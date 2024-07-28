import 'package:flutter_base_app/config/util/custom_widget.dart';

class Artist {
  final String name;
  final String imagePath;

  Artist({required this.name, required this.imagePath});
}

List<Artist> dummyListArtist = [
  Artist(
      name: "Ed Sheeran, Katy Perry, Pitbull and more",
      imagePath: imagePaths('img_artist1')),
  Artist(
      name: "Catch the Latest Playlist made just for you...",
      imagePath: imagePaths('img_artist2')),
];
