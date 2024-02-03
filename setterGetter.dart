//setter getter

class spacecraft {
  String? _name;
  DateTime? launch;

  String? get getName {
    return _name;
  }

  set setName(String? Name) {
    _name = Name;
  }

  set setTime(DateTime? Launcedate) {
    launch = Launcedate;
  }

  DateTime? get getDatetime {
    return launch;
  }

  void info() {
    print(_name);
    print(launch);
  }

  void dateTIme(DateTime date) {
    print("Birthdate: ${date}");
  }
}

class cat extends spacecraft {
  String Cname = "";
  String color = "";

  set Setname(String Name) {
    _name = Name;
  }

  String get GtNmae {
    return Cname;
  }

  set Setcolor(String Color) {
    color = Color;
  }

  String get GEtcolor {
    return color;
  }

  nameColor() {
    print("Cate name: ${_name}");
    print("cat color: $color");
  }
}

void main() {
  spacecraft s1 = spacecraft();
  s1.setName = "voyger";
  s1.setTime = DateTime(1987, 5, 10);
  // s1.info();
  // print("name of spacecraft: ${s1.getName}");

  // print("launch time: ${s1.getDatetime}");

  cat c1 = cat();
  c1.Setname = "Kitty";
  c1.Setcolor = "brown";
  var x = c1.setTime = DateTime(
    2012,
    12,
  );
  c1.dateTIme(x);

  c1.nameColor();
}
