// Filtro Customizado

List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for (E elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

main() {
  var notas = [8.2, 7.1, 6.8, 5.3, 9.8, 9.1, 8.5, 7.7];

  var notasBoasFn = (double nota) => nota >= 7;
  var notasMuitoBoasFn = (double nota) => nota >= 8.8;

  var notasBoas = filtrar<double>(notas, notasBoasFn);
  var notasMuitoBoas = filtrar<double>(notas, notasMuitoBoasFn);

  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);

  var nomes = ['Ana', 'Bia', 'Rebeca', 'Gui', 'João'];
  var nomesGrandesFn = (String nome) => nome.length >= 5;

  print(filtrar(nomes, nomesGrandesFn));
}
