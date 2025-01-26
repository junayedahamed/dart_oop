import 'dart:async';

void timer(int duration) {
  int secondsLeft = duration;

  Timer.periodic(
    Duration(seconds: 1),
    (timer) {
      int min = secondsLeft ~/ 60;
      int sec = secondsLeft % 60;

      print("$min:$sec");

      if (secondsLeft == 0) {
        print("Timer Ended!");
        timer.cancel(); // Stop the timer
      } else {
        secondsLeft--;
      }
    },
  );
}

void main() {
  // Duration time = Duration(seconds: 3);
  timer(600);
}
