import 'figura.dart';

class Retangulo extends Figura {
  double largura;
  double comprimento;

  Retangulo(this.largura, this.comprimento, int x, int y) : super(x, y);

  @override
  double calcularArea() {
    return largura * comprimento;
  }

  bool isQuadrado() {
    return largura == comprimento;
  }
}
