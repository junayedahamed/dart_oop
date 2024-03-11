class A {
  m1() {
    print("1");
  }

  m2() {
    print("2");
  }
}

//we can implement multi class but we can't inherit multi class in dart
class B implements A {
  @override
  m1() {}

  @override
  m2() {}
}
