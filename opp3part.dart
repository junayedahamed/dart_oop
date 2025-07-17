class employee {
  String? name;
  String? mobile_NUM;
  int? ID;
  int? salary;
  int? exp_Year;

  void check_salaryType(int money) {
    if (money >= 50000) {
      print("High salary");
    }
    if (money < 50000 && money > 30000) {
      print("Decent");
    } else {
      print("low salary");
    }
  }

  void check_position_status(int exp) {
    if (exp == 1) {
      print("Junior");
    }
    if (exp >= 1 && exp <= 4) {
      print("Intermidiate");
    } else {
      print("senior");
    }
  }

  void intro() {
    print("Name: $name");
    print("UID: $ID");
    print("cell no: $mobile_NUM");
    print("Experience:$exp_Year");
  }

  void check_phone(String num) {
    if (num.length == 11) {
      print("valid num");
    } else {
      print("Invalid number");
    }
  }

  employee(String Name, String num, int id, int salary, int exp) {
    this.name = Name;
    this.mobile_NUM = num;
    this.salary = salary;
    this.ID = id;
    this.exp_Year = exp;
  }
}
