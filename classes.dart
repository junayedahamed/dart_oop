class car {
  String? name;
  double? price;
  DateTime? launcedate;
  int? get launcyr => launcedate?.year;

  void showname() {
    print(name);
    print(launcedate);
    print("price={$price}");
  }

  car(this.launcedate, this.name, this.price);
}

void main() {
  car c1 = car(DateTime(2021, 9, 10), "bugatti", 120000);

  c1.showname();
}
