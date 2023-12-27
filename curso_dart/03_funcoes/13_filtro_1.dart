main() {
  var notas = [8.2, 7.1, 6.8, 5.3, 9.8, 9.1, 8.5, 7.7];
  var notasBoas = [];

  for (var nota in notas) {
    if (nota >= 7) {
      notasBoas.add(nota);
    }
  }

  print(notas);
  print(notasBoas);
}
