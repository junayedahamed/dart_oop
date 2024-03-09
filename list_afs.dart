void main() {
  List<String> alphabet = ['a', 'b', 'c', 'd'];
  for (var each in alphabet) {
    print(each);
  }
  alphabet.add('value');
  print(alphabet);
  print(alphabet.first);
  print(alphabet.length);
  alphabet.addAll(['e', 'f', 'g']);
  print(alphabet);
  print(alphabet.reversed);
  print(alphabet);
  print(alphabet.indexOf('a'));
  alphabet.insert(4, "Junayed");
  print(alphabet);
  alphabet.replaceRange(1, 5, ['k', 'l', 'm']);
  print(alphabet);

  Set s = alphabet.toSet();
  print(s);
}
