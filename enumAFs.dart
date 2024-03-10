enum gender { male, female, custom, unknown }

void main() {
  final Gender = gender
      .values; //this values provide the list of the componnents under enum gender

  print(Gender);

  final G = gender.custom;
  switch (G) {
    case gender.male:
      print("Male");
    case gender.female:
      print("female");
    case gender.custom:
      print("Custom");
    default:
      print("Unknown");
  }
}
