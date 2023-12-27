main() {
  var notas = [8.2, 7.1, 6.8, 5.3, 9.8, 9.1, 8.5, 7.7];

  var notasBoasFn = (double nota) => nota >= 7;
  var notasMuitoBoasFn = (double nota) => nota >= 8.8;

  /*
    where() é uma função que recebe uma função como parâmetro e retorna uma lista
    seria o mesmo que filter() em JavaScript
  */
  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);

  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);
}
