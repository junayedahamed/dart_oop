import 'song_model.dart';
import 'song_player.dart';

void main() async {
  player p = player();
  List<Song> Album1 = [
    Song(1, "Skyfall", "Adilie", Duration(minutes: 0, seconds: 3)),
    Song(2, "Numb", "Chester", Duration(minutes: 0, seconds: 3)),
    Song(3, "Dimonds", "Rihana", Duration(minutes: 0, seconds: 3)),
    Song(4, "beeping", "test", Duration(minutes: 0, seconds: 5)),
  ];

  for (var song in Album1) {
    await p.playSong(song);
  }
}
