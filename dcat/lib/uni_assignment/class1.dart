mixin Running {
  void run() {
    print("Running............");
  }
}

class Person with Running {
  String name;
  int age;
  double height;
  Person(this.name, this.age, this.height);

  show() {
    print(name);
    print(age);
    print(height);
  }
}

class Cat with Running {
  String name;
  String color;
  Cat(this.name, this.color);
}

void main() {
  Cat c1 = Cat("kitty", "Grey");
  Person p1 = Person("Junayed", 22, 5.7);
  c1.run();
  p1.run();
  p1.show();

  // List obj = [c1, p1];
  // var o = obj.expand((element) {
  //   return element.toString();
  // });
  // print(o);
}
