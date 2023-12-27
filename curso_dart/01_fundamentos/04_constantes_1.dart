import 'dart:io';

main() {
  // Área da circunferência = PI * raio * raio

  //constante é definida em tempo de compilação e final é definida em tempo de execução (runtime)
  const PI = 3.1415;

  stdout.write("Informe o raio: ");
  final entradaDoUsuario = stdin.readLineSync() ?? "";
  final double raio = double.parse(entradaDoUsuario);

  final area = PI * raio * raio;
  print("O valor do raio é: " + area.toString());
}
