class stuednt {
  String? name;
  String? ID;
  String? Dept;
  double? gpa;

  void intro() {
    print("Hi! My name is $name");
    print("My id is :$ID ");
    print("Department is: $Dept");
  }

  void check_waiver(double cgpa) {
    if (cgpa < 3.00) {
      print("No waiver");
    } else if (cgpa == 3.00) {
      print("20% waiver");
    } else if (cgpa > 3.00) {
      print("grater than 20%");
    }
    print("\n");
  }

  void hello(String name) {
    print("Hello everyone From $name");
  }

  stuednt(String name, String Id, String Dept, double gpa) {
    this.name = name;
    this.ID = Id;
    this.gpa = gpa;
    this.Dept = Dept;
  }
}

class School extends stuednt {
  String? number;

  School(super.name, super.Id, super.Dept, super.gpa);
}

void main() {
  stuednt s1 = stuednt("Junayed", "221-15-5395", "CSE", 3.30);
  s1.intro();
  s1.hello("Junayed");
  s1.check_waiver(3.30);
  stuednt s2 = stuednt("Sushanto", "6026", "EEE", 3.00);
  s2.check_waiver(3.00);
}
