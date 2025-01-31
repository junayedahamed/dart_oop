import 'interface_class.dart';

mixin Showdwtails {
  void showDetails(String name, String licenceNum, String model) {
    print("name is :$name");
    print("licence is :$licenceNum");
    print("model is :$model");
  }
}

// Vehicle v=Vehicle(); //extending this class is not possible but implemetion possible with other class
class Myvehicle with Showdwtails implements Vehicle {
  String name;
  String licenceNum;
  String model;
  Myvehicle(this.name, this.model, this.licenceNum);

  @override
  void moveForward(int meter) {
    print("moved backward $meter meter");
  }
}

void main() {
  Myvehicle myv = Myvehicle("Sujuki", "R15", "102050");

  myv.moveForward(10);
  myv.showDetails(myv.name, myv.licenceNum, myv.model);
}
