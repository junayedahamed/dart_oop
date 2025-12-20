List<int> findDup(List data) {
  List<int> res = [];
  if (data.isEmpty) {
    return res;
  }

  for (var i = 0; i < data.length; i++) {
    for (var j = i + 1; j < data.length; j++) {
      if (data[j] == data[i]) {
        res.add(data[i]);
      }
    }
  }

  return res;
}

void nn() {
  final arr = [1, 2, 3, 4, 1, 5, 2, 3, 4, 6, 8, 9, 9, 10];

  List<int> unique = [];
  bool isDup = false;

  for (int i = 0; i < arr.length; i++) {
    print(arr[i]);
    isDup = false;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        isDup = true;
        break;
      }
    }
    if (!isDup) {
      print("adding ${arr[i]}");
      unique.add(arr[i]);
    }
  }
  print(unique);
}

void main() {
  final data = [1, 2, 3, 4, 5, 6, 7, 5, 8, 9, 9, 1];
  print(findDup(data));
}
