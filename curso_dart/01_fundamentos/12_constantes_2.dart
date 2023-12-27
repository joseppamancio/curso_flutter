main() {
  // Ao usar o const, a lista se torna imutável
  final lista = const ['Ana', 'Lia', 'Gui'];
  // lista.add('Rebeca');   // Operação não permitida
  print(lista);

  const lista2 = ['Ana', 'Lia', 'Gui'];
  // lista.add('Rebeca');   // Operação não permitida
  print(lista2);

  var lista3 = ['Ana', 'Lia', 'Gui'];
  lista3.add('Rebeca');
  print(lista3);
}
