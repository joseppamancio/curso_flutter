import 'dart:io';

main() {
  var digitado = '';

  // Executado nenhum ou mais vezes
  while (digitado != 'sair') {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync().toString();
  }

  // Executado pelo menos uma vez
  do {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync().toString();
  } while (digitado != 'sair');

  Map<String, double> notas = {
    'João Pedro': 9.1,
    'Maria Augusta': 7.2,
    'Ana Silva': 6.4,
    'Roberto Andrade': 8.8,
    'Pedro Firmino': 9.9,
  };

  var nomes = notas.keys;
  var valores = notas.values;
  var registros = notas.entries;

  var i = 0;
  while (i < nomes.length) {
    print(
        "Nome do aluno é ${nomes.elementAt(i)} e a nota é ${valores.elementAt(i)}");
    i++;
  }

  i = 0;
  while (i < valores.length) {
    print("A nota é ${valores.elementAt(i)}");
    i++;
  }

  i = 0;
  while (i < registros.length) {
    print(
        "O ${registros.elementAt(i).key} tem nota ${registros.elementAt(i).value}.");
    i++;
  }
}
