//custom exception

// ignore_for_file: deprecated_member_use

class value implements Exception {
  lessthanFive() {
    return 'less than 5';
  }

  greaterThanten() {
    return 'greater than 10';
  }

  value1(int v) {
    if (v < 5) {
      throw lessthanFive();
    } else if (v > 10) {
      throw greaterThanten();
    } else {
      print("great");
    }
  }
}

void main() {
  //format exception

  try {
    int result = int.parse('44s');
    print(result);
  } catch (e) {
    print(e);
  }

  //stack trace
  //int div by 0
  try {
    var val = 10 ~/ 0;
    print(val);
  } on IntegerDivisionByZeroException {
    print("Cannot divide by 0");
  } finally {
    print("all is well");
  }

  //custom call
  value c = value();
  try {
    c.value1(7);
  } catch (e) {
    print(e);
  }
}
