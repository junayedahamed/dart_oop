import 'dart:math' as math;

class GenerateList {
  final _numbers = List.generate(
    20,
    (index) => math.Random().nextInt(25),
  );
  List<int> get numbers => _numbers;
}
