//univarsity
class University {
  String dept;
  int sn;
  University(this.dept, this.sn);
}

void main() {
  University u = University("CSE", 120);
  print(u.dept);
}
