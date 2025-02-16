import 'dart:math';

maxNum(List num) {
  int maxNumber = num.reduce((curr, next) {
    return curr > next ? curr : next;
  });
  print("maximum number is $maxNumber");
}

void main() {
  List nums = List.generate(
    10,
    (index) {
      return Random().nextInt(20);
    },
  );
  maxNum(nums);
}
