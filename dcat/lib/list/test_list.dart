// import 'dart:developer';

class Model1 {
  final bool yop;
  final String name;
  Model1({required this.yop, required this.name});
  static Model1 parse(ModelAny data) {
    return Model1(yop: data.anybool, name: data.anyText);
  }
}

class Model2 {
  final bool yop;
  final String desc;
  Model2({required this.yop, required this.desc});

  static Model2 parse(ModelAny data) {
    return Model2(yop: data.anybool, desc: data.anyText);
  }
}

class ModelAny {
  final bool anybool;
  final String anyText;
  ModelAny({required this.anybool, required this.anyText});
//parsing others class value to Modelany class value
  static ModelAny? parse(dynamic val) {
    if (val is Model1) {
      return ModelAny(anybool: val.yop, anyText: val.name);
    } else if (val is Model2) {
      return ModelAny(anybool: val.yop, anyText: val.desc);
    } else {
      return null;
    }
  }
}

class Post {
  List<Model1> m1 = [];
  List<Model2> m2 = [];
  final List<ModelAny> _any = [];
  void add(Model1 m) {
    m1.add(m);
    _any.add(ModelAny.parse(m)!);
  }

  void delete(Model2 mm) {
    m2.add(mm);
    _any.add(ModelAny.parse(mm)!);
  }

  List<ModelAny> get all => _any.reversed.toList();
}

void main() {
  List<Model1> md1 = [];
  List<Model2> md2 = [];
  Model1 m1 = Model1(yop: true, name: "name");
  Model1 m2 = Model1(yop: true, name: "name2");
  Model1 m3 = Model1(yop: true, name: "name3");
  Model2 mm1 = Model2(yop: false, desc: "desc");
  Model2 mm2 = Model2(yop: false, desc: "desc2");
  Model2 mm3 = Model2(yop: false, desc: "desc3");
  Post p = Post();
  p.add(m1); //true
  p.delete(mm1); //false
  p.delete(mm2); //false
  p.add(m2); //true
  p.delete(mm3); //false
  p.add(m3); //true
  var value = p.all;

  for (int i = 0; i < value.length; i++) {
    if (value[i].anybool == false) {
      md2.add(Model2.parse(value[i]));
      // print(value[i].anyText);
    } else {
      md1.add(Model1.parse(value[i]));
      // print(value[i].anyText);
    }
  }

  print("Model 1 values");
  for (var val in md1) {
    print("${val.name} ${val.yop}");
  }

  print("model 2");
  for (var val in md2) {
    print("${val.desc} ${val.yop}");
  }

  print(ModelAny.parse("val"));
}
