void main() {
  int a = 3;
  int b = 4;

  // Operadores Unários
  a++; // Postfix
  --a; // Prefix

  print(a);

  print(a++ == --b);
  print(a == b);

  // Operadores Unários Lógicos
  print(!true);
  print(!false);

  bool x = false;
  print(!x);
}
