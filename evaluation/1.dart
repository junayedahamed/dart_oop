int fact(int value) {
  if (value == 1 || value == 0) {
    return 1;
  }
  return value * fact(value - 1);
}

void main() {
  print(fact(5));
  print(fact(7));
}
