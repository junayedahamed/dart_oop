void main() {
  List<int> numbers = [1, 2, 3, 4];

  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  var list = ["junayed", "hasnat", "amit"];
  print(list[0]);

  //set
  var numberss = {1, 2, 3, 6, 4, 8, 45};
  var even = {2, 4, 6, 8};
  var odd = {1, 3, 5, 7};
  numberss.add(45); //adding valuee on set
  print(even.union(odd));
  print(numberss);

  //map

  var gifts = {"1": "Gold Medel", "2": "Silver Medel", "3": "platinum"};
  gifts["4"] = "Iron medal";
  print(gifts.isEmpty);

  print(gifts);

  //final const map

  final molicule = const {1: "hydrogen", 2: "helium", 3: "Lithium"};
  print(molicule);
}
