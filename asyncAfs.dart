void main() {
  print("line1");
  print("line2");
  Future third() async {
    await Future.delayed(Duration(seconds: 5), () => print("hello "));
  }

  third();
  print("line 4");
}
