class Complex {
  Complex(this.real, this.img);
  double real;
  double img;

  Complex operator +(Complex other) {
    return Complex(real + other.real, img + other.img);
  }

  Complex operator -(Complex other) {
    return Complex(real - other.real, img - other.img);
  }

  @override
  String toString() {
    return "${real}+${img}i";
  }
}

void main() {
  Complex c = Complex(10, 5);
  Complex c2 = Complex(1, 5);
  Complex o = (c2 + c);
  Complex minus = (c2 - c);
  print(minus);

  print(c2);

  print(o);
}
