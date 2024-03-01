import 'figura.dart';

class Circulo extends Figura {
  double raio;

  Circulo(this.raio, int x, int y) : super(x, y);

  double calcularDiametro() {
    return 2 * raio;
  }

  @override
  double calcularArea() {
    return 3.14 * raio * raio;
  }
}