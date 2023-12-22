const pi = 3.14159;

class person {
  String? name;
  int? age;
  void intro1() {
    print("name: $name");
    print("age: $age");
  }

  void calculate(int x, int y) {
    int sum = x + y;
    print("sum=$sum");
  }
}

double area(int r) {
  return pi * r * r;
}

class pet extends person {
  String? pname;
  void intro() {
    print("name: $pname");
    print("age: $age");
  }
}

class mobile {
  String? model;
}

void main() {
  person p1 = new person();
  p1.name = "Junayed";
  p1.age = 21;
  p1.intro1();
  pet pt2 = pet();
  pt2.pname = "kitty";
  pt2.age = 2;
  pt2.intro();
}
