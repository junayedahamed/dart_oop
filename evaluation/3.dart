int fact(int value) {
  if (value == 1 || value == 0) {
    return 1;
  }
  return value * fact(value - 1);
}

isSpecial(int num) {
  int total = 0, str = num;
  while (num > 0) {
    int temp = num % 10;
    total = total + fact(temp);

    num = num ~/ 10;
  }

  if (total == str) {
    return true;
  } else {
    return false;
  }
}

void main() {
  // int num = 145;

  print(isSpecial(145));
  print(isSpecial(123));
}
