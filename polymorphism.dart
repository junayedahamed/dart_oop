class father {
  int age = 50;
  method1() {
    print("1");
  }

  method2() {
    print("2");
  }
}

class son extends father {
  String name = "hii";
  @override
  method2() {
    print("override method2");
  }
}

void main() {
  son s = son();
  s.method1();
  s.method2();
  print(s.name);
}
