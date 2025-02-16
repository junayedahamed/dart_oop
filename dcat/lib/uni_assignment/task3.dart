void main() {
  final List nums = List.generate(
    10,
    (index) {
      return index + 1;
    },
  );

  for (int num in nums) {
    if (num % 2 == 0) {
      print(num);
    }
  }
}
