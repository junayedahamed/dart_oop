class junayed {
  int? age;
  int? Id;

  void ShowId() {
    print(Id);
  }
}

Future fetchdata() async {
  Future.delayed(Duration(seconds: 1), () => print("hii"));
}

void main() {
  junayed j1 = junayed();
  j1.Id = 5395;
  j1.ShowId();

  fetchdata();
}
