//univarsity
class University {
  String dept;
  int sn;
  University(this.dept, this.sn);
}

void main() {
  University u = University("CSE", 120);
  University u2 = University("EEE", 190);
  University u3 = University("EEE", 190);
  print(u3.dept);
  print(u.dept);
  print(u2.dept);
}
