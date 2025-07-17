class mobile {
  String? num;
}

class person extends mobile {
  String? name;
  int? age;

  person(String name, int age, String num) {
    this.name = name;
    this.age = age;
    this.num = num;
  }

  void name_age() {
    print("name is $name");
    print("Age is $age");
  }

  void validMobile_num(String num) {
    if (num.length == 11) {
      print("Valid number");
    } else {
      print("invalid number");
    }
  }

  void ageTo_be_100(int age) {
    int age_left = (100 - age);
    print("to be 100 year $age_left year left");
  }
}

void main() {
  person p1 = person("junayed", 21, "01724413298");
  p1.validMobile_num("01724413298");
  p1.name_age();
  p1.ageTo_be_100(21);
}
