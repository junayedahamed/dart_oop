class Calulate {
  int val;
  Calulate(this.val);
  operator +(int num) {
    return val + num;
  }

  operator -(int num) {
    return val - num;
  }

  operator *(int num) {
    return val * num;
  }
}

void main() {
  Calulate c = Calulate(10);
  print(c + 12);
  print(c - 10);
}
