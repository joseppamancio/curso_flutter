main() {
  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];

  for (var i = 0; i < notas.length; i++) {
    print("Nota ${i + 1} = ${notas[i]}");
  }

  for (var nota in notas) {
    print("Nota = $nota");
  }

  var coordenadas = [
    [1, 3],
    [9, 0],
    [4, 7],
    [2, 2],
  ];

  for (var coordenada in coordenadas) {
    for (var ponto in coordenada) {
      print("Ponto = $ponto");
    }
  }
}
