import 'figura.dart';
import 'dart:math' as Math;

class Triangulo extends Figura {
  double ladoA;
  double ladoB;
  double ladoC;

  Triangulo(this.ladoA, this.ladoB, this.ladoC, int x, int y) : super(x, y);

  @override
  double calcularArea() {
    double s = (ladoA + ladoB + ladoC) / 2;
    return Math.sqrt(s * (s - ladoA) * (s - ladoB) * (s - ladoC));
  }

  String tipoDeTriangulo() {
    if (ladoA == ladoB && ladoB == ladoC) {
      return "Equilátero";
    } else if (ladoA == ladoB || ladoA == ladoC || ladoB == ladoC) {
      return "Isósceles";
    } else {
      return "Escaleno";
    }
  }
}
