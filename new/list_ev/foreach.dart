import 'where_list.dart';

class sum {
  operator +(number1) {
    print(number1);
  }

  operator *(number) {
    print(number * 5);
  }
}

void main() {
  List<int> values = [
    1,
    3,
    6,
    5,
    4,
    8,
    93,
  ];

  Friends f1 = Friends("Sushanto", 22, 'Bd');
  Friends f2 = Friends("Ajoy", 23, "Germany");

  Friends f3 = Friends("Hasnat", 26, "China");
  Friends f4 = Friends('Murad', 22, 'usa');
  List<Friends> friendslist = [
    f1,
    f2,
    f3,
    f4,
    f1,
  ];

  Set<Friends> value = friendslist.toSet();
  value.forEach((val) => print(val.name));

  friendslist.forEach((fd) {
    print(fd.age);
  });

  sum s = sum();

  values.forEach(
    (items) => s + items,
  );
}
