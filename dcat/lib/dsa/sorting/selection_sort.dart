import 'package:dcat/dsa/sorting/list_class.dart';

void main() {
  //Selection sort

  final l = GenerateList();
  final numbers = l.numbers;

  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i; j < numbers.length; j++) {
      if (numbers[i] > numbers[j]) {
        int temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }
  }

  print(numbers);
}
