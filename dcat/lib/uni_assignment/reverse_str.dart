import 'dart:io';

void main() {
  String email = "junayedahamed660@gmail.com";
  var w = email.endsWith("gmail.com");
  print(w);
  //fibonacci

  int x = 0, y = 1, n = 0;
  stdout.write("$x $y ");
  for (int i = 2; i < 10; i++) {
    n = x + y;
    x = y;
    y = n;
    stdout.write("$n ");
  }
}
