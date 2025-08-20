//person model
class Person {
  String name;
  double height;
  bool isStudent;

  Person(this.name, this.height, this.isStudent);
}

void main() {
  Person p1 = Person("Junayed", 5.6, false);
  Person p2 = Person("hasnat", 5.7, true);
  Person p3 = Person("sushanto", 5.8, false);
  Person p4 = Person("murad", 5.9, true);
  Person p5 = Person("ajoy", 6.0, false);
  Person p6 = Person("aong", 5.4, false);

  List<int> myint = List.generate(
    10,
    (index) {
      return index;
    },
  );

  // myint.forEach((action) {
  //   if (action % 2 == 0) {
  //     print(action);
  //   }
  // });

  List<Person> persons = [p1, p2, p3, p4, p5, p6];

  final aj = persons.where((p) {
    return p.isStudent == true;
  }).toList();

  for (var a in aj) {
    print(a.name);
    // print(a.height);
    // print(a.isStudent);
  }
}
