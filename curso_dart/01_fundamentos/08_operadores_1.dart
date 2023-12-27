void main() {
  // Operadores Aritméticos (binários/infix)

  int a = 7;
  int b = 3;
  int resultado = a + b;

  // Operadores Binários/Infix
  print(resultado);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b); // Resto da divisão
  print(a + (b * a) - (b / a));

  // Operadores Lógicos
  bool ehFragil = true;
  bool ehCaro = false;

  print(ehFragil && ehCaro); // AND -> E
  print(ehFragil || ehCaro); // OR -> OU
  print(ehFragil ^ ehCaro); // XOR -> OU Exclusivo
  print(!ehFragil); // NOT -> Negação
  print(!!ehCaro); // NOT -> Negação
}
