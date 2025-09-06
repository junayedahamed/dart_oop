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

void main() {
  final data = [1, 2, 3, 4, 5, 6, 7, 5, 8, 9, 9, 1];
  print(findDup(data));
}
