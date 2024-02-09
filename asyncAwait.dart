Future<void> greet() async {
  Future.delayed(Duration(seconds: 4), () => print("object1"));
}

void sayHi() {
  print("hii");
}

void main() async {
  await greet();
  sayHi();
}
