import 'package:flutter_base_app/config/util/custom_widget.dart';

class Album {
  final String name;
  final String imagePath;

  Album({required this.name, required this.imagePath});
}

List<Album> dummyListAlbum = [
  Album(
      name: "Ed Sheeran, Katy Perry, Pitbull and more",
      imagePath: imagePaths('img_artist1')),
  Album(
      name: "Catch the Latest Playlist made just for you...",
      imagePath: imagePaths('img_artist2')),
];
