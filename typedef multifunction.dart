typedef multi_oparatin(int x, int y);

sum(int a, int b) {
  print("sum is ${a + b}");
}

sun(int a, int b) {
  print("Subtraction: ${a - b}");
}

void main() {
  multi_oparatin m = sum;
  m(10, 5);
  m = sun;
  m(5, 2);
}
