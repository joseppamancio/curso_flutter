import 'dart:math';

main() {
  int resultado = soma(2, 3);
  resultado *= 2;
  print('O dobro do resultado é $resultado');

  print('O resultado é ${somarNumerosAleatorios()}');
}

int soma(int a, int b) {
  return a + b;
}

int somarNumerosAleatorios() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}
