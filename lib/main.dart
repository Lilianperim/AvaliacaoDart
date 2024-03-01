import 'package:dm1_avaliacao1/retangulo.dart';
import 'package:dm1_avaliacao1/triangulo.dart';
import 'circulo.dart';
import 'extensions.dart';
import 'figura.dart';

void main() {
  int x = readInt('Digite o valor de x:');
  int y = readInt('Digite o valor de y:');

  Circulo circulo = Circulo(readDouble('Digite o raio do círculo:'), x, y);
  Retangulo retangulo = Retangulo(
      readDouble('Digite a largura do retângulo:'),
      readDouble('Digite o comprimento do retângulo:'), x, y);
  Triangulo triangulo = Triangulo(
      readDouble('Digite o lado A do Triangulo:'),
      readDouble('Digite o lado B do Triangulo:'),
      readDouble('Digite o lado C do Triangulo:'), x, y);

  print("Criado Circulo em X=$x Y=$y \n"
      "Área: ${circulo.calcularArea()} \n"
      "Diâmetro: ${circulo.calcularDiametro()}\n");
  print('Criado um retangulo em X=$x Y=$y \n'
      'Área: ${retangulo.calcularArea()} \n'
      '${retangulo.isQuadrado() ? "É um Quadrado\n" : "Não é um quadrado"}\n');
  print('Criado um triangulo em X=$x Y=$y \n'
      'Área: ${triangulo.calcularArea()} \n'
      'Triângulo ${triangulo.tipoDeTriangulo()}\n');

  List<Figura> figuras = [circulo, retangulo, triangulo];
  double somaDasAreas =
  figuras.fold(0, (total, figura) => total + figura.calcularArea());

  print('Área total dos objetos: $somaDasAreas');
}
