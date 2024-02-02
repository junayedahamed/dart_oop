import 'dart:math';

class physics_calculation {
  double? a, v, u, t, s;

  double accelaration(double v, double u, double t) {
    return ((v - u) / t);
  }

  double surrender(double u, double t, double a) {
    return ((u * t) + (.5 * a * (t * t)));
  }

  double time(double v, double u, double a) {
    return (v - u) / a;
  }

  double velocity(double u, double a, double s) {
    return sqrt(u * u + 2 * a * s);
  }
}

void main() {
  physics_calculation c1 = physics_calculation();
  double x = c1.accelaration(20, 5, 4);
  print("$x");
  double y = c1.velocity(50, 12, 400);
  print("$y");
}
