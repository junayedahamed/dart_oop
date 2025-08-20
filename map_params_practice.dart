void test(Map<String, dynamic>? map) {
  final d1 = map?['email'];
  final d2 = map?['name'];

  print(d1);
  print(d2);
}

void main() {
  test({"name": "junayed"});
}
