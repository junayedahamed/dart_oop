class ex {
  int? _age;
  setAge(int v) {
    this._age = v;
  }

  getAge() {
    return _age;
  }
}

void main() {
  ex e = ex();
  e.setAge(15);
  print(e.getAge());
}
