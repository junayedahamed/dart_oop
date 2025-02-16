primeCheck(int num) {
  if (num <= 1) {
    print("Not prime");
  } else if (num == 2) {
    print("Prime number");
  } else if (num % 2 == 0) {
    print("not prime");
  } else {
    for (int i = 3; i <= num ~/ 2; i += 2) {
      if (num % i == 0) {
        print("Not prime");
      }
    }
    print("prime num");
  }
}

void main() {
  int value = 14;
  primeCheck(value);
}
