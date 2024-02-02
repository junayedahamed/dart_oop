int fibonacci(int val) {
  if (val == 0 || val == 1) {
    return val;
  }

  return (fibonacci(val - 1)) + (fibonacci(val - 2));
}

int factorial(int val) {
  if (val == 0) {
    return 1;
  }

  return val * factorial(val - 1);
}

void main() {
  List num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // for (var each in num) {
  //   print(each);
  // }

  num.where((element) => num.contains(element)).forEach((element) {
    print(element);
  });
  List name = ["John", "Doe", "Jane", "Doe"];

  // while (name.length > i) {
  //   print(name[i]);

  //   i++;
  // }

  // name.where((element) => name.contains(element)).forEach((element) {
  //   print(element);
  // });

  name.where((element) => name.contains(element)).forEach((element) {
    print(element);
  });
  // print(factorial(10));

  // print(fibonacci(20));
}
