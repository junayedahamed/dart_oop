class Friends {
  String name;
  int age;
  String country;

  Friends(this.name, this.age, this.country);
}

void main() {
  List<String> names = [
    "Junayed",
    "rohim",
    "korim",
    "shimul",
    "amit",
    "1236541",
    "01724413298",
  ];

  Iterable<String> value = names.where(
    (element) {
      return element.contains('');
    },
  );

  print(value);

  //find even numbers using where method

  List<int> numbers = [
    123,
    144,
    199,
    120,
    113,
    1,
    3,
    5,
    6,
    8,
    1,
    5,
  ];

  Iterable<int> evennums = numbers.where((nums) {
    return nums.isEven;
  });

  print(evennums);

  List<Friends> friendslist = [
    Friends("Sushanto", 22, 'Bd'),
    Friends("Ajoy", 23, "Germany"),
    Friends("Hasnat", 26, "China"),
    Friends('Murad', 22, 'usa'),
  ];

  Iterable<Friends> fvalues = friendslist.where(
    (fd) => fd.country.contains('Germany'),
  );
  fvalues.forEach((friend) => print(friend.name));
}
