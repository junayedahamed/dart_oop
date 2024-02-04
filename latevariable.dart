class num {
  late int x =
      value(); //using late keyword we can declare a variable null type and we can do  lazy load
}

int value() {
  return 5;
}

String readthermoeter() {
  return "hi hello";
}

void main() {
  num n = num();
  print(n.x);

  late String tempareture = readthermoeter();
  print(tempareture);
}
