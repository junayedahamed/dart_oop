class GenericPractice {
  compare<T extends Comparable>(T value1, T value2) {
    if (value2.compareTo(value2) > 5) {
      return value1;
    } else {
      return value2;
    }
  }
}

void main() {
  GenericPractice g = GenericPractice();
  print(g.compare("value1", "value2"));
}
