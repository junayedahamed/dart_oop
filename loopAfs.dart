void main() {
  List char = ['a', 'b', 'c', 'd'];
  //for each loop
  char.forEach((e) {
    print(e);
  });

  //while loop
  int i = 0;
  while (i != char.length) {
    print(char[i]);
    i++;
  }
}
