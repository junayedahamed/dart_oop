maxNum(int x, int y, int z) {
  List<int> nums = [x, y, x];
  var max = nums.reduce(
    (value, element) {
      return value > element ? value : element;
    },
  );
  return max;
}

void main() {
  print(maxNum(12, 25, 9));
}
