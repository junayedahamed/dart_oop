sumNumbers(List elemnt) {
  double sum = 0;
  for (var each in elemnt) {
    if (each is int || each is double) {
      sum += each;
    }
  }
  print(sum);
}

void main() {
  List elemnt = ["sdfjdsjf", 10, "kjfkds", 5.5, "Flutter", 7.2, true, 20];
  sumNumbers(elemnt);
}
