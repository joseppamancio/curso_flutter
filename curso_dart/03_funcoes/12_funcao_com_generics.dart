Object segundoElementoV1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

// Função com generics
E? segundoElementoV2<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

void main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];

  print(segundoElementoV1(lista));

  // O tipo que definimos na chamada da função é o tipo que será retornado
  int segundoElemento = segundoElementoV2<int>(lista)!;
  print(segundoElemento);

  segundoElemento = segundoElementoV2(lista)!;
  print(segundoElemento);

  segundoElemento = segundoElementoV2<int?>(lista)!;
  print(segundoElemento);
}
