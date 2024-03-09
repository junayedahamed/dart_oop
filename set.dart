void main() {
  Set set1 = {1, 2, 3, 4};
  Set set2 = {1, 2};
  set1.add(10);
  var result = set1
      .any((Element) => Element >= 10); //checking wheather value have or not
  print(set1.elementAt(0));
  List l = set1.toList(); //converting set to a list

  print("casting ${set1.cast()}");
  print(set1.containsAll(set2));
  var set = set1.difference(set2);
  print("new set: $set");
  print(l);

  print(result);
  print(set1);

  set1.addAll({9, 10, 11, 12, 13});
  print(set1);

  print(set1.contains(10));
  print(set2.length);
  var v = set2.every(
    (element) => element >= 1,
  );

  print(v);

  //new set for testing
  Set s3 = {};
  var val = s3
      .firstOrNull; //it will return first or null element if there have no element
  print(val);

  print(set2.nonNulls);
}
