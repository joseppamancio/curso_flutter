main() {
  // Map pega os valores de uma lista e transforma em outro valor
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  String Function(Map) pegarApenasNome = (aluno) => aluno['nome'];
  var nomes = alunos.map(pegarApenasNome);
  print(nomes);

  int Function(String) qtdeLetras = (texto) => texto.length;
  var quantidadeDeLetras = nomes.map(qtdeLetras);
  print(quantidadeDeLetras);

  // Encadeado
  var quantidadeDeLetrasEncadeado = alunos.map(pegarApenasNome).map(qtdeLetras);
  print(quantidadeDeLetrasEncadeado);

  int Function(int) dobro = (numero) => numero * 2;
  var resultado = alunos.map(pegarApenasNome).map(qtdeLetras).map(dobro);
  print(resultado);
}
