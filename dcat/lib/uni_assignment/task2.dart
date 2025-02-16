void check(int num) {
  if (num < 0) {
    print('Number is negative');
  } else if (num > 0) {
    print('Number is positive');
  } else {
    print('Number is zero');
  }
}

void main() {
  check(1);
  check(-1);
  check(0);
}
