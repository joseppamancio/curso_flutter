main() {
  saudarPessoa(nome: "João", idade: 33);
  saudarPessoa(idade: 47, nome: "Maria");
  imprimirData(ano: 2020);
  imprimirData(dia: 23, mes: 12, ano: 2021);
}

// Usar chaves {} torna os parâmetros nomeados
saudarPessoa({required String nome, required int idade}) {
  print("Olá $nome nem parece que você tem $idade anos.");
}

imprimirData({int dia = 1, int mes = 1, int ano = 1970}) {
  print("$dia/$mes/$ano");
}
