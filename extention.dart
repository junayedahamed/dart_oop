extension StringtoNum on String {
  int convertToInt() {
    return int.parse(this);
  }

  double convertTodouble() {
    return double.parse(this);
  }
}

void main() {
  var value = "7887";
  print(value.convertToInt());
  print(value.convertTodouble());
}
