class television {
  bool? what;

  void turn_on() {
    print("tv turned on");
  }

  @Todo("hello", "hii")
  @Deprecated("use turn_on instead")
  void activate() {
    turn_on();
  }
}

//self made annotation

class Todo {
  final String? what;
  final String? who;
  const Todo(this.what, this.who);
}

void main() {
  television t1 = television();
  t1.turn_on();
}
