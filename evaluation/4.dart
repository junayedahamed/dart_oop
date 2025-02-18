sumEven(List nums) {
  int sum = 0;
  var odds = nums.where(
    (element) {
      return element % 2 == 0;
    },
  ).toList();

  for (int element in odds) {
    sum = sum + element;
  }
  return sum;
}

void main() {
  List<int> nums = [3, 8, 15, 20, 25];
  print(sumEven(nums));
}
