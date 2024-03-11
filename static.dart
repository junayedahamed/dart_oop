void main() {
  //before static we have to achieve name like below
  // example e = example();
  // print(e.name);

  //after static we do this
  print(example.name);
}

class example {
  static String name = "juna";
}
