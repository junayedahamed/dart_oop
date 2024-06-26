class Student {
  String _name = "";
  int _age = 0;
  String _Id = "";

  setname(name) {
    this._name = name;
  }

  get name {
    return this._name;
  }

  setAge(age) {
    this._age = age;
  }

  get getAge {
    return this._age;
  }

  setID(id) {
    this._Id = id;
  }

  get getID {
    return this._Id;
  }

  void chageId(String newId) {
    this._Id = newId;
  }

  void display() {
    print(_name);
    print(_age);
    print(_Id);
  }
}

void main() {
  Student s = Student();
  s.setname("junayed");
  s.setAge(21);
  s.setID("221-15-5395");

  s.display();

  s.chageId("2158256");
  s.display();
}
