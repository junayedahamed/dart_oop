void main() {
  //iterable generate
  Iterable<int> it = Iterable.generate(
    10,
    (index) {
      return index;
    },
  );

  //list generate

  List<double> mylist = List.generate(10, (index) => index.toDouble());

  var value = mylist.where(
    (element) {
      return element >= 5.0;
    },
  );

  List<String> names = ["hello", "Hiik", "bye", "ok", "Junayedk"];

  dynamic contains = names.where(
    (element) {
      // return element.contains("k");
      return element.contains("l");
    },
  );

  print(contains);

  print(it);
  print(value);
}
