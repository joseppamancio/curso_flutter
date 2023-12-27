main() {
  // Reduce pega os valores de uma lista e transforma em um único valor
  var notas = [7.3, 5.4, 7.7, 8.1, 9.9, 5.5, 6.7, 8.8, 9.9, 10.0];
  var total = notas.reduce(somar);
  print(total);

  var nomes = ['Ana', 'Bia', 'Carlos', 'Daniel', 'Maria', 'Pedro'];
  print(nomes.reduce(juntar));
}

double somar(double acumulador, double elemento) {
  print("$acumulador $elemento");
  return acumulador + elemento;
}

String juntar(String acumulador, String elemento) {
  print("$acumulador => $elemento");
  return "$acumulador, $elemento";
}
