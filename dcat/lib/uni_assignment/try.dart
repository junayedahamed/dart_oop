import 'package:dcat/uni_assignment/class1.dart';

void main() {
  Person juna = Person("name", 18, 5.7);
  Person hasnat = Person("hasnat", 20, 5.8);
  Person aong = Person("aong", 22, 5.6);

  List<Person> p = [juna, hasnat, aong];
  var selected = p.where((Person e) {
    return e.name.contains("a");
  });

  for (var element in selected) {
    print(element.name);
  }

  print(passMatch("@12344656adjjdd"));
}

passMatch(String pass) {
  RegExp exp = RegExp(r"/^w+([-+.\']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/");
  var match = exp.hasMatch(pass);
  print(match);
  if (match) {
    return "valid pass";
  } else {
    return "invalid pass";
  }
}
