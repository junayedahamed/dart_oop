class solarsystem {
  String? _plannetname;
  int? _numofmoon;
  bool? _is_giant;
  int? _position_on_solarsystem;

  set setName(String? name) {
    _plannetname = name;
  }

  String? get geTname {
    return _plannetname;
  }

  set setNumOfMoon(int? mn) {
    _numofmoon = mn;
  }

  get getMoon {
    return _numofmoon;
  }

  set Setsize(bool what) {
    _is_giant = what;
  }

  get Size {
    return _is_giant;
  }

  set position(int? numposition) {
    _position_on_solarsystem = numposition;
  }

  get getPOs {
    return _position_on_solarsystem;
  }

  void InfoAboutPlannet() {
    print("name: $_plannetname");
    print("Giant: $_is_giant");
    print("No. of moon:$_numofmoon");
    print("position: $_position_on_solarsystem");
  }
}
