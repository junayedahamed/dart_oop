import 'dart:async';

void main() {
  final controller = StreamController<String>.broadcast(); //multi subscriable

  controller.stream.listen((data) => print("Listener 1: $data"));
  controller.stream.listen((data) => print("Listener 2: $data"));

  controller.add("Hello");
  controller.add("World");

  controller.close();
}
