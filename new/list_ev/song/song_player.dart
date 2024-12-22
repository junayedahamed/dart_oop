import 'dart:async';

import 'song_model.dart';

class player {
  Future<void> playSong(Song s) async {
    int totalSeconds = s.playback_time.inSeconds;
    int elapsedSeconds = 0;
    print("Song id ${s.id}");
    print("Singer name ${s.name}");
    print("Song name ${s.singer_name}");
    print("Playing song........");
    Completer com = Completer();
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      int minutes = elapsedSeconds ~/ 60;
      int seconds = elapsedSeconds % 60;

      print("Playing ${s.name} - [$minutes:$seconds]");

      elapsedSeconds++;

      if (elapsedSeconds >= totalSeconds) {
        timer.cancel();

        print("${s.name} finished playing!\n");
        com.complete();
      }
    });
    await com.future;
  }
}
