//if a class being abstract then we can't be able to amke any object of that class

abstract class father {
  int age = 50;
  String? name;
  method1() {
    print("1");
  }

  set_name(String Name) {
    this.name = Name;
  }

  getName() {
    return name;
  }

  method2() {
    print("2");
  }
}

class son extends father {
  String Name = "hii";
  @override
  method2() {
    print("override method2");
  }
}

void main() {
  son s = son();
  s.method1();
  s.method2();
  print(s.Name);
//we can access abstract class property through thats inherits class
  son s2 = son();
  s2.set_name("rahim");
  print(s2.getName());
}
