int sum(int x, int y) {
  return x + y;
}

int sub(int x) {
  return x;
}

Function? fun(int x, int y) {
  return () {
    return null;
  };

  // return null;
}

void main() {
  late int p;
  p = 45;

  print(p);

  var f = fun(10, 12);
  print(f);

  int? x = null;
  int? y = 12;

  //sum(x!, y);/// pushing x to non nullable var forcefully

  // print(sub(x ?? 12)); /// if a value is null then push a default value in it

  print(sum(x ?? 10, y));
}
