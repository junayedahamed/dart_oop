void main() {
  Map<int, String> m = {5395: "Junayed", 6026: "Susa", 6034: "Hasnat"};

  print(m[5395]);

  print(m.keys);
  var c = m.keys;
  print(" $c");
  String newList = m.toString();
  print("String: $newList");
  List value = m.values.toList(); //making list of Maps values
  print(value);

  for (var each in c) {
    print(m[each]);
  }

  m.addAll({6048: "Murad", 6035: "Ajoy"});
  print(m);

  print(m.containsKey(6045)); //false
  m.removeWhere(
      (key, value) => false); //this will remove all values and keys from maps
  print(m);
  print(m.isEmpty); //true
  print(m.length);
  m.remove(6026);
  m.update(
    6026,
    (value) => "Susa",
    ifAbsent: () => "Juna",
  );
  print(m);
  print(m.remove(6026));
  m.addAll({5555: "hey", 5698: "jfjff"});

  print(m);

  print(m.isEmpty);
  List keys = m.keys.toList();
  print(keys);
  print(keys.toSet());

  print(keys.toString());
}
