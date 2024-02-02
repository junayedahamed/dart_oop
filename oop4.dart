class leaf {
  String? color, size;
  void Show_colorAndsize() {
    print("color:$color");
    print("size of leaf: $size");
  }
}

class tree extends leaf {
  int? age;
  int? No_of_branch;
  void displayall() {
    print("Age of tree: $age");
    print("No.of branch of tree: $No_of_branch");
    print("color of leaf:$color");
    print("size of leaf:$size");
  }

  bool isToo_oldtree(int year) {
    if (year >= 4) {
      return true;
    }
    return false;
  }

  tree(int Age, int No_of_branch, String color, String size) {
    this.age = age;
    this.No_of_branch = No_of_branch;
    this.color = color;
    this.size = size;
  }
}

void main() {
  tree t1 = tree(5, 6, "yellow", "long");
  t1.Show_colorAndsize();
  t1.displayall();
  bool x = t1.isToo_oldtree(4);
  print("$x");
}
