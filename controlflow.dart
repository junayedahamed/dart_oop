century(var year) {
  if (year >= 2001) {
    return "21st century";
  }
  if (year < 2000) {
    return "20th century";
  }
}

list_print(List list) {
  for (var each in list) {
    print(each);
  }
}

void main() {
  var which = century(2020);
  print(which);

  List flying_object = ["plane", "earth", "jupiter"];
  list_print(flying_object);
}
