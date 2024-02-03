class spaceStation {
  String name = "";
  DateTime? age;

  void findAge(DateTime launchdate) {
    print(launchdate);
    var x = launchdate.year;
    var y = DateTime.now().year;
    if (x > y)
      print(x - y);
    else
      print(y - x);
  }

  set setName(String Name) {
    name = Name;
  }

  String get Nameget {
    return name;
  }

  set SetAge(DateTime? launchDAte) {
    age = launchDAte;
  }

  DateTime? get gtDate {
    return age;
  }

  void evreything() {
    print("Name: ${name}");
    print("launch date ${age}");
  }
}

void main() {
  spaceStation s = spaceStation();
  s.setName = "Internnational Space Station";
  var x = s.SetAge = DateTime(1967, 12, 12, 11, 10, 12, 11);

  s.evreything();
  s.findAge(x);

  spaceStation s2 = spaceStation();
  s2.setName = "CIss";
  var y = s2.SetAge = DateTime(1988);
  s2.evreything();
  s2.findAge(y);
}


// in setter we set value and from getter we take value simple?????????????????????
