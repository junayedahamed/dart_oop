import 'dart:math';

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

class Quadriceq {
  Quadriceq(this.a, this.b, this.c);
  double a;
  double b;
  double c;

  Quadriceq operator +(Quadriceq other) {
    return Quadriceq(a + other.a, b + other.b, c + other.c);
  }

  (Complex x, Complex y) solve() {
    double n = (b * b - 4 * a * c);
    double f = sqrt(n.abs());

    if (n.isNegative) {
      double img = f / (2 * a);
      double real = -b / (2 * a);

      Complex x1 = Complex(real, img);
      Complex x2 = Complex(real, -img);
      return (x1, x2);
    }

    double x = (-b + f / 2) * a;
    double y = (-b - f) / (2 * a);

    return (Complex(x, 0), Complex(y, 0));
  }

  Quadriceq eq() {
    return Quadriceq(a, b, c);
  }

  @override
  String toString() {
    return "$a x^2+$b y+ $c =0";
  }
}

void main() {
//  Quadriceq q = Quadriceq(1, 2, 3);
  Quadriceq q2 = Quadriceq(1, 2, 3);

  // Quadriceq? x = (q + q2);
  var s = q2.solve();
  Quadriceq eq = q2.eq();
  print(s);
  print(eq);
  // print(x);
}
