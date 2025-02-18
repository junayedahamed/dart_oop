void main() {
  List nums = List.generate(
    10,
    (index) {
      return index + 1;
    },
  );

  var o = nums.where(
    (element) {
      return element % 2 == 0;
    },
  ).toList();

  print(o);

  var max = nums.reduce(
    (value, element) => value > element ? value : element,
  );
  print(max);

  List k = ["jhjhh", 1, 1.5, "ij", 46];
  int j = 0;
  for (var element in k) {
    if (element is int) {
      j = j + element;
    }
  }
  print(j);
}
