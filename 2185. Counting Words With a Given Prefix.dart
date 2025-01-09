void main() {
  List<String> words = [
    "pay",
    "attention",
    "practice",
    "attend",
    "ddddat",
    'attention',
  ];
  String pref = 'at';
  var count = words.where(
    (element) {
      return element.startsWith(pref);
    },
  );

  print(count.length);
}
