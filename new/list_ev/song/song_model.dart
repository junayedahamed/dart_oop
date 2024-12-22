import 'song_player.dart';

class Song extends player {
  int id;
  String name;
  String singer_name;
  Duration playback_time;

  Song(this.id, this.name, this.singer_name, this.playback_time);
}
