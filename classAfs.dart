class juna {
  String name;
  int Id;
  //optional parameter constructor
  // juna(this.name, [this.Id = 1000]);
  print_nm() {
    print(name);
    print(Id);
  }
  //optional named parameter constructor

  juna(this.name, {this.Id = 1000});
  //default constructor
  //juna();
}

void main() {
  juna j = juna(
    "juna",
  );
  j.print_nm();
}
