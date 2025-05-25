abstract class Human {
  void intro() {
    // print("introducting");
  }
}

class Person extends Human {
  String name;
  int age;
  Person(this.name, this.age);
  @override
  void intro() {
    print("$name $age");
    super.intro();
  }
}

sealed class Data {}

class LoadingState extends Data {}

class LoadedState extends Data {}

void main() {
  Person p = Person("junayed", 23);
  p.intro();
}
