class Data {
  // late se refere a uma variável que será inicializada posteriormente
  late int dia;
  late int mes;
  late int ano;

  String obterFormatada() {
    return '$dia/$mes/$ano';
  }

  String toString() {
    return obterFormatada();
  }

  // Forma mais tradicional de declarar o construtor
  Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }

  // Dart podemos ter apenas um construtor com o mesmo nome, os demais devem ser nomeados

  // Forma mais simples de declarar o construtor
  Data.simples(this.dia, this.mes, this.ano);

  // Forma com parâmetros opcionais
  Data.opcional([this.dia = 1, this.mes = 1, this.ano = 1970]);

  // Forma com parâmetros nomeados
  Data.nomeados({this.dia = 1, this.mes = 1, this.ano = 1970});

  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }
}

main() {
  var dataAniversario = new Data(3, 10, 2020);

  var dataCompra = Data(1, 1, 1970);
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  dataAniversario.obterFormatada();
  dataCompra.obterFormatada();

  String d1 = dataAniversario.obterFormatada();

  print('A data do aniversário é $d1');
  print('A data da compra é ${dataCompra.obterFormatada()}');

  print(dataCompra);
  print(dataAniversario);

  print(new Data.opcional());
  print(new Data.simples(31, 12, 2021));
  print(new Data.nomeados(ano: 2022));
  print(new Data.ultimoDiaDoAno(2023));
}
