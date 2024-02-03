class person {
  String _name = "Junayed";
  int _age = 21;

  //custom setter cstom getter

  set setAge(int agenew) {
    if (agenew > 0) {
      _age = agenew;
    }
    return;
  }

  int get getAge {
    return _age;
  }

  set Setname(String newname) {
    _name = newname;
  }

  String get getname {
    return _name;
  }

  void printinfo() {
    print("name= ${_name}");
    print("Age=${_age}");
  }
}

void main() {
  person p = person();
  p.setAge = 24;
  p.Setname = "AMit";
  p.printinfo();
}
