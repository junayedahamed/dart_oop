void main() {
  final numbers = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  final doublednum = numbers.map((number) => number * 2);
  // print(doublednum.toString());
  final subscription = doublednum.listen(print);
  // subscription.cancel();
}
