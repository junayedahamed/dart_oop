class User<M> {
  User(this.name, this.Id);
  String name;
  int Id;

  void printvalue() {
    print(name);
    print(Id);
  }
}

void main() {
  int key = 0;
  List name = ["juna", "rahim", "karim"];
  Map names = {for (var Item in name) "$Item": key++};
  User u1 = User("juna", 12333);
  u1.printvalue();
  print(names);
}
