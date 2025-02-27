mixin TakenClass {
  void takeClass() {
    print("class on going....");
  }
}

//univarsity
class University with TakenClass {
  String dept;
  int sn;
  University(this.dept, this.sn);
}

void main() {
  University u = University("CSE", 120);
  University u2 = University("EEE", 190);
  University u3 = University("EEE", 190);
  u3.takeClass();
  print(u3.dept);
  print(u.dept);
  print(u2.dept);
}
