void main() {
  final List<int> list = [1, 2, 3, 4, 5];
  list.shuffle();
  print(list);
  // print(list.sublist(3, 5));
  // final filtered = list.takeWhile((p) => p != 2).toList();
  // print(list.asMap());
  final skipped = list
      .skip(2)
      .toList(); //skip function parameter  is=> skip( number_of_value_you_want_to_skip )
  print("Skipped: $skipped");

  // print(filtered);
}
