func(int a, int b) {
  return a + b;
}

func2(int a, {int? b = 10, int? c = 11}) => print({a, b, c});

///on second bracket these are optional named parameter

void main() {
  print(func(10, 20));
  func2(100, b: 2, c: 14);
}
