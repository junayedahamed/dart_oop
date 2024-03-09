var record = ("first", a: 2, b: "hello", "junayed");

void main() {
  (int x, int y, int z) point = (1, 2, 3);
  (int a, int b, int c) value = (1, 2, 3);
  print(record);
  print(record.a);

  print(point == value);

  print(point);
}
